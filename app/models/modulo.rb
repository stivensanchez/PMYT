class Modulo < ActiveRecord::Base
  has_many :maquinas
  has_many :operations
  has_many :instructors
  has_many :groups
  has_many :infos
  #descargar en xls (excel)
 def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << modulo.attributes.values_at(*column_names)
      end
    end
  end
  
  #Paginacion y Buscador
  def self.search(search, page)
      where(['upper(nombre) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
end

end
