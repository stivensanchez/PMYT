class Nivelation < ActiveRecord::Base
  belongs_to :oper
  belongs_to :operation_id
 has_many :developments
 
end
