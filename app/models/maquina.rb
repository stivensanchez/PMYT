class Maquina < ActiveRecord::Base
  # Validacion
   validates :nombre, presence: true
   validates :descripcion, presence: true
   validates :cantidad, presence: true
   
  attr_accessor :ficha_file_maquina
  has_attached_file :ficha, :default_url =>"/maquinas"
  do_not_validate_attachment_file_type :ficha
  belongs_to :modulo
  has_many :operations
  #descargar en xls (excel)
 def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << modulo.maquina.attributes.values_at(*column_names)
      end
    end
  end
  
  #Paginacion y Buscador
  def self.search(search, page)
      where(['upper(nombre) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
  end
end
