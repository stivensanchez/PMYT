class Cost < ActiveRecord::Base
    #validaciones en los campos
    validates :producto, presence: true
    validates :lote, presence: true
    validates :cant, presence: true
    validates :und, presence: true
    validates :cant2, presence: true
    validates :und2, presence: true
    validates :utilidad, presence: true
    belongs_to :ficha
end
