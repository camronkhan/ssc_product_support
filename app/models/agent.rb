class Agent < ActiveRecord::Base
	
	# Relations
	belongs_to :support_function
	belongs_to :support_center
	has_many :support_jobs
	has_many :products, through: :support_jobs
	has_many :operation_times
	has_many :splits

	# Polymorphic Attributes
	has_many :cases, as: :caseable
	has_many :emails, as: :emailable
	has_many :phones, as: :phonable
	has_many :notes, as: :annotatable
end
