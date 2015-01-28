class Ficha < ActiveRecord::Base
  has_many :infos
  has_many :costs
end
