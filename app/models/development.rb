class Development < ActiveRecord::Base
  belongs_to :operation
  belongs_to :info
  belongs_to :oper
  has_many :nivelations
end