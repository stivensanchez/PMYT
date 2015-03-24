class Material < ActiveRecord::Base
    # Validacion
    validates :nombre, presence: true
    validates :cantidad, presence: true
    validates :observaciones, presence: true
    
    belongs_to :info
end
