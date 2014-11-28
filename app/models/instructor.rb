class Instructor < ActiveRecord::Base
  belongs_to :tipo_doc
  belongs_to :modulo
end
