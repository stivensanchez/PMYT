class Nivelation < ActiveRecord::Base
  belongs_to :oper
 has_many :developments
end
