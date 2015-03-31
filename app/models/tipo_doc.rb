class TipoDoc < ActiveRecord::Base
    has_many :opers
    #Validaciines
    validates :nombre, presence: true
    validates :descripcion, presence: true
end
