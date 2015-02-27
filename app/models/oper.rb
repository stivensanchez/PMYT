class Oper < ActiveRecord::Base
  belongs_to :tipo_doc
  belongs_to :group
  has_many :nivelations
  has_many :developments
  has_many :ensambles
  has_many :terminations
  #descargar en xls (excel)
 def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << group.oper.attributes.values_at(*column_names)
      end
    end
  end
end
