class Development < ActiveRecord::Base
  belongs_to :operation
  belongs_to :info
  belongs_to :oper
  belongs_to :nivelation

  after_create :cal
    
  
  def cal
    r = Nivelation.new
    r.oper_id = self.oper_id
    r.development_id = self.operation_id
    
    r.save
  end

end
