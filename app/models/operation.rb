class Operation < ActiveRecord::Base
  
 has_attached_file :image, styles: { medium: '60000000x60000000>', thumb: '10000000x1000000000>' }
  
 has_attached_file :video
  
 do_not_validate_attachment_file_type :video
  
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/flv"]
  
  has_many :developments
  has_many :ensambles
  has_many :terminations
  belongs_to :maquina
  belongs_to :modulo
  has_many :nivelations
  #scope :with_cheap_nivelations, joins(:nivelations) & Nivelation.cheap
  
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
