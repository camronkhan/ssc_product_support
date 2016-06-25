class Product < ActiveRecord::Base

	# Relations
	belongs_to :company
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

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
  	validates :company, presence: true
  	validates_associated :company
    validates :source_type, presence: true
    validates_associated :source_type
    validates :source_location, presence: true
    validates_associated :source_location
    
end
