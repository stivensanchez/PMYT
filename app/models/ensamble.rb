class Ensamble < ActiveRecord::Base
  belongs_to :operation
  belongs_to :info
  belongs_to :oper
  before_create :nivelation

private
    def nivelation
    self.create(:operation_id => operation)
    end

end
