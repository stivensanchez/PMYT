class Instructor < ActiveRecord::Base
  belongs_to :tipo_doc
  belongs_to :modulo
  #descargar en xls (excel)
 def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << modulo.instructor.attributes.values_at(*column_names)
      end
    end
  end
  #Paginacion y Buscador
  def self.search(search, page)
      where(['upper(numero_doc) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombres")
  end
end
