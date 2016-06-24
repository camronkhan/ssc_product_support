require 'test_helper'

class UserRoleTest < ActiveSupport::TestCase

	def setup
		@new_role = UserRole.create(
			name: 'NewString',
			description: 'NewString'
		)

		@duplicate_role = UserRole.create(
			name: 'MyString',
			description: 'MyString'
		)
	end

	test "valid role must be saved" do
		assert @new_role.valid?
		assert @new_role.save
	end

	test "duplicate role must not be saved" do
		assert @duplicate_role.invalid?
	    assert_not @duplicate_role.save
	end

	test "role name must be present" do
		@new_role.name = ''
		assert @new_role.invalid?
		assert_not @new_role.save
	end

	test "role description must be present" do
		@new_role.description = ''
		assert @new_role.invalid?
		assert_not @new_role.save
	end

end
