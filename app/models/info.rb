class Info < ActiveRecord::Base
  belongs_to :modulo
  belongs_to :ficha
  belongs_to :nivelation
  has_many :measures
  has_many :materials
  has_many :prendas
  has_many :developments
  has_many :ensambles
  has_many :terminations
  mount_uploader :image, ImageUploader
end
