class Ensamble < ActiveRecord::Base
  belongs_to :operation
  belongs_to :info
  belongs_to :oper
  has_many :nivelations

after_save :cal
  
  def cal
    r = Nivelation.new
    
    r.sam = self.sam
    r.save
  end


end
