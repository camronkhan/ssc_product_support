class User < ActiveRecord::Base

	# Relations
  	belongs_to :user_role

  	# Hashed password
  	has_secure_password
end
