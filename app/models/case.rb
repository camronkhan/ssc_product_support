class Case < ActiveRecord::Base
	
	# Relations
	belongs_to :caseable, polymorphic: true

	# Validations
	validates :queue, presence: true, uniqueness: { case_sensitive: false }
	
end
