class Company < ActiveRecord::Base

	# Relations
	has_many :products

	# Polymorphic Attributes
	has_many :notes, as: :annotatable

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }

end

