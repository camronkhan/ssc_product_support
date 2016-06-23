class Day < ActiveRecord::Base
	
	# Relations
	has_many :operation_times
end
