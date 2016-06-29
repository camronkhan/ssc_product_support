class Facility < ActiveRecord::Base

	# Relations
	has_many :facility_jobs
	has_many :products, through: :facility_jobs

	# Polymorphic Attributes
	has_many :case_queues, as: :ticketable
	has_many :emails, as: :emailable
	has_many :phone_numbers, as: :phonable
	has_many :notes, as: :annotatable

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	
end
