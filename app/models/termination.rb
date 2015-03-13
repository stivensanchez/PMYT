class Termination < ActiveRecord::Base
  belongs_to :operation
  belongs_to :info
  belongs_to :oper
   after_create :nivelation

private
    def nivelation
    self.update(:operation_id => operation)
    end

end
