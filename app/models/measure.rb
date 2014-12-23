class Measure < ActiveRecord::Base
  belongs_to :info
  has_many :materials
end
