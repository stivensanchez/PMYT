class Termination < ActiveRecord::Base
  belongs_to :operation
  belongs_to :info
end
