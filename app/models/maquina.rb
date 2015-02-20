class Maquina < ActiveRecord::Base
  attr_accessor :ficha_file_maquina
  has_attached_file :ficha, :default_url =>"/maquinas"
  do_not_validate_attachment_file_type :ficha
  belongs_to :modulo
  has_many :operations
end
