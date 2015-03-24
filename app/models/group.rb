class Group < ActiveRecord::Base
  # Validaciones
  validates :nombre, presence: true
  validates :num_ficha, presence: true
  
  belongs_to :modulo
  has_many :opers
  #descargar en xls (excel)
 def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << modulo.group.attributes.values_at(*column_names)
      end
    end
  end
  #Paginacion y Buscador
  def self.search(search, page)
      where(['upper(num_ficha) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
  end
end
