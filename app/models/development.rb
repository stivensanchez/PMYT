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

    after_save :cal
   
    def cal
     self.operation_id = operation.nombre
     self.sam  = sam
     self.tiempo_real = tiempo_real 
     self.desempeño = desempeño 
     r.save
   end
end