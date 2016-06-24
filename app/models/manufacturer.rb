class Manufacturer < ActiveRecord::Base

	# Relations
	has_many :products

	# Polymorphic Attributes
	has_many :addresses, as: :addressable
	has_many :phones, as: :phonable
	has_many :notes, as: :annotatable

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }

end

