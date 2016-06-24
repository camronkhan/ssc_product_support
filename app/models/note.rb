class Note < ActiveRecord::Base
	
	# Relations
	belongs_to :annotatable, polymorphic: true

	# Validations
	validates :info, presence: true
	
end
