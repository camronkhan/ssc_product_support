class OperationTime < ActiveRecord::Base
	
	# Relations
	belongs_to :agent
	belongs_to :operation_day

	# Validations
	validates :open, presence: true
	validates :close, presence: true
	validates :agent, presence: true
	validates_associated :agent
	validates :operation_day, presence: true
	validates_associated :operation_day

end
