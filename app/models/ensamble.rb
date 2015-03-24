class Ensamble < ActiveRecord::Base
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
  has_many :nivelations

after_create :cal
  
  def cal
    r = Nivelation.new
     r.oper_id = self.oper_id
    r.ensamble_id = self.operation_id
    r.save
  end


end
