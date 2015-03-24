class Measure < ActiveRecord::Base
    # Validaciones
    validates :medidas, presence: true
    validates :talla, presence: true
    validates :cm, presence: true
    validates :tolerancia, presence: true
    
  belongs_to :info
end
