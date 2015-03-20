class Termination < ActiveRecord::Base
  belongs_to :operation
  belongs_to :info
  belongs_to :oper
  has_many :nivelations

after_save :cal
  
  def cal
    r = Nivelation.new
     r.oper_id = self.oper_id
    r.termination_id = self.operation.nombre
   
    r.save
  end


end
