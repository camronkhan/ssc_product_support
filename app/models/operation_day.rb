class OperationDay < ActiveRecord::Base
	
	# Relations
	has_many :operation_times

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	
end
