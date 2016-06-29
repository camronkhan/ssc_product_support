class Agent < ActiveRecord::Base
	
	# Relations
	belongs_to :agent_role
	belongs_to :contact_center
	has_many :agent_jobs
	has_many :products, through: :agent_jobs
	has_many :operation_times
	has_many :splits

	# Polymorphic Attributes
	has_many :case_queues, as: :ticketable
	has_many :emails, as: :emailable
	has_many :phone_numbers, as: :phonable
	has_many :notes, as: :annotatable

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates_inclusion_of :available24x7, in: [true, false]
	validates :agent_role, presence: true
	validates_associated :agent_role
	validates :contact_center, presence: true
	validates_associated :contact_center
	
end
