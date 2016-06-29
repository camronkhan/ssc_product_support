class ContactCenter < ActiveRecord::Base

	# Relations
	has_many :agents

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	
end
