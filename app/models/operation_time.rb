class OperationTime < ActiveRecord::Base
  belongs_to :agent
  belongs_to :day
end
