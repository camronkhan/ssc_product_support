class ServiceJob < ActiveRecord::Base

	# Relations
	belongs_to :product
	belongs_to :servicer

	# Polymorphic Attributes
	has_many :notes, as: :annotatable
end
