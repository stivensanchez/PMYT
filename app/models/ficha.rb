class Ficha < ActiveRecord::Base
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
end
