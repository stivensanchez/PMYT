class Group < ActiveRecord::Base
  belongs_to :modulo
  has_many :opers
  #descargar en xls (excel)
 def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << modulo.group.attributes.values_at(*column_names)
      end
    end
  end
end
