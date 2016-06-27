class Servicer < ActiveRecord::Base

	# Relations
	has_many :service_jobs
	has_many :products, through: :service_jobs

	# Polymorphic Attributes
	has_many :cases, as: :caseable
	has_many :emails, as: :emailable
	has_many :phones, as: :phonable
	has_many :notes, as: :annotatable

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	
end
