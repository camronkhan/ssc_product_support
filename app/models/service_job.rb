class ServiceJob < ActiveRecord::Base

	# Relations
	belongs_to :product
	belongs_to :job_type
	belongs_to :servicer

	# Polymorphic Attributes
	has_many :notes, as: :annotatable

	# Validations
	validates :condition, presence: true, uniqueness: { scope: [:product_id, :job_type_id, :servicer_id] }
	validates :product, presence: true, uniqueness: { scope: [:condition, :job_type_id, :servicer_id] }
	validates_associated :product
	validates :job_type, presence: true, uniqueness: { scope: [:product_id, :condition, :servicer_id] }
	validates_associated :job_type
	validates :servicer, presence: true, uniqueness: { scope: [:product_id, :job_type_id, :condition] }
	validates_associated :servicer

end
