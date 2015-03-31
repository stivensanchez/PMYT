class TipoDoc < ActiveRecord::Base
    has_many :opers
    has_many :instructors
    #Validaciines
    validates :nombre, presence: true
    validates :descripcion, presence: true
end
