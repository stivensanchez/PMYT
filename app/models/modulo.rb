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
end
