class Product < ActiveRecord::Base

	# Relations
	belongs_to :manufacturer
	belongs_to :source_type
	belongs_to :source_location

	# Polymorphic Attributes
	has_many :links, as: :linkable
	has_many :notes, as: :annotatable
	acts_as_taggable
end
