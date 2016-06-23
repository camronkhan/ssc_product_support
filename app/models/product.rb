class Product < ActiveRecord::Base

	# Relations
	belongs_to :manufacturer
	belongs_to :source_type
	belongs_to :source_location
	has_many :model_numbers
	has_many :support_jobs
	has_many :agents, through: :support_jobs
	has_many :service_jobs
	has_many :servicers, through: :service_jobs

	# Polymorphic Attributes
	has_many :links, as: :linkable
	has_many :notes, as: :annotatable
	acts_as_taggable
end
