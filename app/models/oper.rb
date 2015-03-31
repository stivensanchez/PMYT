class Oper < ActiveRecord::Base
  belongs_to :tipo_doc
  belongs_to :group
  has_many :nivelations
  has_many :developments
  has_many :ensambles
  has_many :terminations
  #descargar en xls (excel)
  #Validaciones
  validates :numero_documento, presence: true
  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :correo, presence: true
  validates :telefono, presence: true
  
 def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << group.oper.attributes.values_at(*column_names)
      end
    end
  end
  #Paginacion y Buscador
  def self.search(search, page)
      where(['upper(numero_documento) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
  end
end
