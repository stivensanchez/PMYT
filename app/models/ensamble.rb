class Ensamble < ActiveRecord::Base
  belongs_to :operation
  belongs_to :info
  belongs_to :oper
  has_many :nivelations

after_create :cal
  
  def cal
    r = Nivelation.new
     r.oper_id = self.oper_id
    r.ensamble_id = self.operation_id
    r.save
  end


end
