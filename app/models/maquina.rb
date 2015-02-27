class Maquina < ActiveRecord::Base
  attr_accessor :ficha_file_maquina
  has_attached_file :ficha, :default_url =>"/maquinas"
  do_not_validate_attachment_file_type :ficha
  belongs_to :modulo
  has_many :operations
  #descargar en xls (excel)
 def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << modulo.maquina.attributes.values_at(*column_names)
      end
    end
  end
end
