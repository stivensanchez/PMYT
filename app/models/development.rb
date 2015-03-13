class Development < ActiveRecord::Base
  belongs_to :operation
  belongs_to :info
  belongs_to :oper
  has_many :nivelations
  
  after_save :cal
  
  def cal
    r = Nivelation.new
    r.operation_id = self.operation_id
    r.tiempo_sam = self.sam
    r.save
  end

end
