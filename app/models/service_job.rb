class ServiceJob < ActiveRecord::Base

	# Relations
	belongs_to :product
	belongs_to :servicer

	# Polymorphic Attributes
	has_many :notes, as: :annotatable

	# Validations
	validates :condition, presence: true
	validates :product, presence: true
	validates_associated :product
	validates :servicer, presence: true
	validates_associated :servicer

end
