class ServiceJob < ActiveRecord::Base

	# Relations
	belongs_to :product
	belongs_to :servicer

	# Polymorphic Attributes
	has_many :notes, as: :annotatable

	# Validations
	validates :condition, presence: true, uniqueness: { scope: [:product_id, :servicer_id] }
	validates :product, presence: true, uniqueness: { scope: [:condition, :servicer_id] }
	validates_associated :product
	validates :servicer, presence: true, uniqueness: { scope: [:product_id, :condition] }
	validates_associated :servicer


end
