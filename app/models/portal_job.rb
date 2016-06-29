class PortalJob < ActiveRecord::Base

	# Relations
	belongs_to :product
	belongs_to :job_type
	belongs_to :portal

	# Polymorphic Attributes
	has_many :notes, as: :annotatable

	# Validations
	validates :condition, presence: true, uniqueness: { scope: [:product_id, :job_type_id, :portal_id] }
	validates :product, presence: true, uniqueness: { scope: [:condition, :job_type_id, :portal_id] }
	validates_associated :product
	validates :job_type, presence: true, uniqueness: { scope: [:product_id, :condition, :portal_id] }
	validates_associated :job_type
	validates :portal, presence: true, uniqueness: { scope: [:product_id, :job_type_id, :condition] }
	validates_associated :portal
end
