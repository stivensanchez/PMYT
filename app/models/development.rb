class Development < ActiveRecord::Base
  belongs_to :operation
  belongs_to :info
  belongs_to :oper
  has_many :nivelations
  
  
  after_update :cal
    
  
  def cal
    r = Nivelation.new
    r.oper_id = self.oper_id
    r.operacion = self.operation.nombre
    r.sam = self.sam
    r.save
  end

end
