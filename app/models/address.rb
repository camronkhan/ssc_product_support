class Address < ActiveRecord::Base
	
	# Relations
	belongs_to :addressable, polymorphic: true

	# Validations
	validates :company, presence: true
	validates :line_1, presence: true
	validates :city, presence: true
	validates :state_province, presence: true
	validates :postal_code, presence: true
	validates :country, presence: true
	
end
