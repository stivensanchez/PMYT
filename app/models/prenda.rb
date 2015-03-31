class Prenda < ActiveRecord::Base
  belongs_to :info
  #Paginacion y Buscador
  #Validaciones
  validates :nombre, presence: true
  validates :cantidad, presence: true
  validates :observaciones, presence: true
  def self.search(search, page)
      where(['upper(nombre) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
end
end
