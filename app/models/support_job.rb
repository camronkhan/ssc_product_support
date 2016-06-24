class SupportJob < ActiveRecord::Base
	
	# Relations
	belongs_to :product
	belongs_to :support_type
	belongs_to :agent

	# Polymorphic Attributes
	has_many :notes, as: :annotatable

	# Validations
	validates :condition, presence: true
	validates :product, presence: true
	validates_associated :product
	validates :support_type, presence: true
	validates_associated :support_type
	validates :agent, presence: true
	validates_associated :agent

end