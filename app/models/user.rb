class User < ActiveRecord::Base

	# Relations
  	belongs_to :user_role
end
