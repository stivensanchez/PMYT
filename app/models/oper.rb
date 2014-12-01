class Oper < ActiveRecord::Base
  belongs_to :tipo_doc
  belongs_to :group
end
