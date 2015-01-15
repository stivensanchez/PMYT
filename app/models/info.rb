class Info < ActiveRecord::Base
  belongs_to :modulo
  belongs_to :ficha
  has_many :measures
  has_many :prendas
  has_many :developments
  mount_uploader :image, ImageUploader
end
