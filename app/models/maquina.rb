class Maquina < ActiveRecord::Base
  belongs_to :modulo
  has_many :operations
end
