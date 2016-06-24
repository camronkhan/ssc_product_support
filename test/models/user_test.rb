require 'test_helper'

class UserTest < ActiveSupport::TestCase

	test "should save valid user" do
		user = users(:valid)
		user.password = 'password'
		user.password_confirmation = 'password'
		assert user.save
	end

	test "should not save user without password" do
		user = users(:valid)
		user.password = ''
		user.password_confirmation = 'password'
		assert_not user.save
	end

	test "should not save user without password confirmation" do
		user = users(:valid)
		user.password = 'password'
		user.password_confirmation = ''
		assert_not user.save
	end

end
