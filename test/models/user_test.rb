require 'test_helper'

class UserTest < ActiveSupport::TestCase
  	
  	fixtures :user_roles
  	
	def setup
		@valid_user = User.new(core_id: "zzz999",
						 	   first_name: "First",
							   last_name: "Last",
							   email: "user@example.com",
		                 	   password: "foobar",
		                 	   password_confirmation: "foobar",
		                 	   user_role_id: 1)
	end

	test "should save valid user" do
		assert @valid_user.save
	end

	test "should not save user without password" do
		user = User.new
		assert_not user.save
	end

	test "should not save user with password less than 6 characters" do
		user = @valid_user
		user.password = "foo"
		assert_not user.save
	end

end
