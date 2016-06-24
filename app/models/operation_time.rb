class OperationTime < ActiveRecord::Base
	
	# Relations
	belongs_to :agent
	belongs_to :day

	# Validations
	validates :open, presence: true
	validates :close, presence: true
	validates :agent, presence: true
	validates_associated :agent
	validates :day, presence: true
	validates_associated :day

end
