class Portal < ActiveRecord::Base
	
	# Relations
	has_many :portal_jobs
	has_many :products, through: :portal_jobs

	# Polymorphic Attributes
	has_many :notes, as: :annotatable

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
end
