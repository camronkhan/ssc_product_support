require 'test_helper'

class UserTest < ActiveSupport::TestCase

	fixtures :user_roles

	def setup
		@new_user = User.create(
			core_id: 'NewString',
			first_name: 'NewString',
			last_name: 'NewString',
			email: 'NewString@NewString',
			password_digest: 'NewString',
			user_role: user_roles(:valid)
		)
		@new_user.password = 'NewString'
		@new_user.password_confirmation = 'NewString'

		@duplicate_user = User.create(
			core_id: 'MyString',
			first_name: 'MyString',
			last_name: 'MyString',
			email: 'MyString@MyString',
			password_digest: 'MyString',
			user_role: user_roles(:valid)
		)
		@duplicate_user.password = 'MyString'
		@duplicate_user.password_confirmation = 'MyString'
	end

	test "valid user must be saved" do
		assert @new_user.valid?
		assert @new_user.save
	end

	test "duplicate user must not be saved" do
		assert @duplicate_user.invalid?
	    assert_not @duplicate_user.save
	end

	test "core id must be present" do
		@new_user.core_id = ''
		assert @new_user.invalid?
		assert_not @new_user.save
	end

	test "first name must be present" do
		@new_user.first_name = ''
		assert @new_user.invalid?
		assert_not @new_user.save
	end

	test "last name must be present" do
		@new_user.last_name = ''
		assert @new_user.invalid?
		assert_not @new_user.save
	end

	test "email address must be present" do
		@new_user.email = ''
		assert @new_user.invalid?
		assert_not @new_user.save
	end

	test "email address must contain @ symbol" do
		@new_user.email = 'camron.khan#motorolasolutions.com'
		assert @new_user.invalid?
		assert_not @new_user.save
	end

	test "password must be present" do
		@new_user.password = nil
		assert @new_user.invalid?
		assert_not @new_user.save
	end

	test "password confirmation must be present" do
		@new_user.password_confirmation = nil
		assert @new_user.invalid?
		assert_not @new_user.save
	end

	test "password and confirmation must match" do
		@new_user.password_confirmation = 'password1'
		assert @new_user.invalid?
		assert_not @new_user.save
	end

	test "password length must be at least 6 characters" do
		@new_user.password = 'pass'
		@new_user.password_confirmation = 'pass'
		assert @new_user.invalid?
		assert_not @new_user.save
	end

	test "user must be associated with a user role" do
		@new_user.user_role = nil
		assert @new_user.invalid?
		assert_not @new_user.save
	end

end
