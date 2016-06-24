class User < ActiveRecord::Base

	# Relations
  	belongs_to :user_role

  	# Hashed password
  	has_secure_password

  	# Validations
  	validates :core_id, presence: true, uniqueness: { case_sensitive: false }
  	validates :first_name, presence: true
  	validates :last_name, presence: true
  	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /@/i }
  	validates :password, length: { minimum: 6 }
  	validates_associated :user_role
end
