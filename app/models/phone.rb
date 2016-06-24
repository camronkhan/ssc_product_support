class Phone < ActiveRecord::Base
	
	# Relations
	belongs_to :phonable, polymorphic: true

	# Validations
	validates :number, presence: true
	
end
