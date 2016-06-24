class ModelNumber < ActiveRecord::Base

	# Relations
	belongs_to :product

	# Validations
	validates :model, presence: true, uniqueness: { case_sensitive: false }
	validates :product, presence: true
  	validates_associated :product

end
