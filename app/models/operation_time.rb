class OperationTime < ActiveRecord::Base
	
	# Relations
	belongs_to :agent
	belongs_to :day
end
