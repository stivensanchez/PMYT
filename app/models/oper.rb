class Oper < ActiveRecord::Base
  belongs_to :tipo_doc
  belongs_to :group
  has_many :nivelations
  has_many :developments
  has_many :ensambles
  has_many :terminations
end
