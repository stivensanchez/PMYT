class Treatment < ActiveRecord::Base
  belongs_to :info
  #Paginacion y Buscador
  def self.search(search, page)
      where(['upper(proceso) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("proceso")
end
#Validaciones
validates :proceso, presence: true
validates :descripcion, presence: true
validates :ubicacion, presence: true
validates :proveedor, presence: true
validates :precio, presence: true
end
