class CaseQueue < ActiveRecord::Base
	
	# Relations
	belongs_to :ticketable, polymorphic: true

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	
end
