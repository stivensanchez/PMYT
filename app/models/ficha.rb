class Ficha < ActiveRecord::Base
  # Validaciones
  validates :referencia, presence: true
  validates :nombre, presence: true
  
  has_many :infos
  has_many :costs
  #descargar en xls (excel)
 def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << ficha.attributes.values_at(*column_names)
      end
    end
  end
  
  #Paginacion y Buscador
  def self.search(search, page)
      where(['upper(referencia) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("referencia")
  end
end
