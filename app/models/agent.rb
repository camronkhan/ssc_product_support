class Agent < ActiveRecord::Base
	
	# Relations
	belongs_to :support_center
	has_many :support_jobs
	has_many :products, through: :support_jobs
	has_many :operation_times
	has_many :splits

	# Polymorphic Attributes
	has_many :case_queues, as: :ticketable
	has_many :emails, as: :emailable
	has_many :phone_numbers, as: :phonable
	has_many :notes, as: :annotatable

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates_inclusion_of :operates24x7, in: [true, false]
	validates :support_center, presence: true
	validates_associated :support_center
	
end
