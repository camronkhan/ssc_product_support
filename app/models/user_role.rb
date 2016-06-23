class UserRole < ActiveRecord::Base

	# Relations
	has_many :users
end
