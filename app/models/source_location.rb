class SourceLocation < ActiveRecord::Base

	# Relations
	has_many :products

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	
end
