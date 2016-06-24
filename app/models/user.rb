class User < ActiveRecord::Base

	# Relations
  	belongs_to :user_role

  	# Hashed password
  	has_secure_password

  	# Validations
  	validates :password, presence: true, length: { minimum: 6 }
  	validates :password_confirmation, presence: true
end
