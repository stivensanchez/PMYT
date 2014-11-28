class Modulo < ActiveRecord::Base
  has_many :maquinas
  has_many :operations
  has_many :instructors
end
