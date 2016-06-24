class Email < ActiveRecord::Base
	
	# Relations
	belongs_to :emailable, polymorphic: true

	# Validations
	validates :address, presence: true, format: { with: /@/i }
end
