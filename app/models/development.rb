class Development < ActiveRecord::Base
  belongs_to :operation
  belongs_to :info
end
