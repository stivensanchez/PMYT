class Development < ActiveRecord::Base
 # Validaciones
  validates :sam, presence: true
  validates :maquina, presence: true
  validates :calibre_aguja, presence: true
  validates :ppp, presence: true
  validates :margen_costura, presence: true
  validates :guia_accesorios, presence: true
  validates :observaciones, presence: true
  
  
  belongs_to :operation
  belongs_to :info
  belongs_to :oper
  belongs_to :nivelation

  before_validation :cal
  after_save :touch_subject
  
   def cal
    r = Nivelation.new
    r.oper_id = self.oper_id
    r.development_id = self.operation.nombre
    r.sam = self.sam
     r.save
  end

def touch_subject 
 subject.touch
end
 
end
