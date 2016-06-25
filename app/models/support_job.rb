class SupportJob < ActiveRecord::Base
	
	# Relations
	belongs_to :product
	belongs_to :support_type
	belongs_to :agent

	# Polymorphic Attributes
	has_many :notes, as: :annotatable

	# Validations
	validates :condition, presence: true, uniqueness: { scope: [:product_id, :support_type_id, :agent_id] }
	validates :product, presence: true, uniqueness: { scope: [:condition, :support_type_id, :agent_id] }
	validates_associated :product
	validates :support_type, presence: true, uniqueness: { scope: [:product_id, :condition, :agent_id] }
	validates_associated :support_type
	validates :agent, presence: true, uniqueness: { scope: [:product_id, :support_type_id, :condition] }
	validates_associated :agent

end