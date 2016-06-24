class UserRole < ActiveRecord::Base

	# Relations
	has_many :users

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates :description, presence: true
	
end
