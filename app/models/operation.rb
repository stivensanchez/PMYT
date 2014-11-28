class Operation < ActiveRecord::Base
  belongs_to :maquina
  belongs_to :modulo
end
