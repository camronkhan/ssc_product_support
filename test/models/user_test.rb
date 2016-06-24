require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@user = users(:valid)
		@user.password = 'password'
		@user.password_confirmation = 'password'

		@duplicate = User.new(core_id: 'nmq687',
						     first_name: 'Camron',
					         last_name: 'Khan',
						     email: 'camron.khan@motorolasolutions.com',
						     password_digest: 'hashpass',
						     user_role_id: 999)
		@duplicate.password = 'password'
		@duplicate.password_confirmation = 'password'
	end

	test "valid user must be saved" do
		assert @user.save
	end

	test "duplicate user must not be saved" do
	    assert_not @duplicate.save
	end

	test "core id must be present" do
		@user.core_id = ''
		assert_not @user.save
	end

	test "first name must be present" do
		@user.first_name = ''
		assert_not @user.save
	end

	test "last name must be present" do
		@user.last_name = ''
		assert_not @user.save
	end

	test "email address must be present" do
		@user.email = ''
		assert_not @user.save
	end

	test "email address must contain @ symbol" do
		@user.email = 'camron.khan#motorolasolutions.com'
		assert_not @user.save
	end

	test "password must be present" do
		@user.password = nil
		assert_not @user.save
	end

	test "password confirmation must be present" do
		@user.password_confirmation = ''
		assert_not @user.save
	end

	test "password and confirmation must match" do
		@user.password_confirmation = 'password1'
		assert_not @user.save
	end

	test "password length must be at least 6 characters" do
		@user.password = 'pass'
		@user.password_confirmation = 'pass'
		assert_not @user.save
	end

	test "user must be associated with a user role" do
		@user.user_role = nil
		assert_not @user.invalid?
	end

end
