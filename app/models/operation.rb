class Operation < ActiveRecord::Base
 
 attr_accessor :video_file_operation 
 has_attached_file :video, :default_url =>"operations"
 do_not_validate_attachment_file_type :video
 
 attr_accessor :image_file_opeartion
 has_attached_file :image, :default_url =>"operations"
 do_not_validate_attachment_file_type :image
  
  has_many :developments
  has_many :ensambles
  has_many :terminations
  belongs_to :maquina
  belongs_to :modulo
  has_many :nivelations
  #scope :with_cheap_nivelations, joins(:nivelations) & Nivelation.cheap
  #Validaciones 
  validates :nombre, presence: true
  validates :sam, presence: true
  validates :descripcion, presence: true
  validates :image, presence: true
  #validates :video, presence: true
  #descargar en xls (excel)
 def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << modulo.operation.attributes.values_at(*column_names)
      end
    end
 end
  
  #Paginacion y Buscador
  def self.search(search, page)
      where(['upper(nombre) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
  end
end
