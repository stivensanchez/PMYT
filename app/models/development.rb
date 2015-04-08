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
     r = Nivelation.new
     r.oper_id = self.oper_id
     r.development_id = self.operation.nombre
     r.tiempo_real = self.tiempo_real 
     r.desempeño = self.desempeño 
     r.comentario = self.comentario
    r.save
   end
  end
