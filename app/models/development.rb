class Development < ActiveRecord::Base
  belongs_to :operation
  belongs_to :info
  belongs_to :oper
  belongs_to :nivelations
end