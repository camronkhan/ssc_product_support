require 'test_helper'

class AgentRoleTest < ActiveSupport::TestCase

	def setup
		@new_role = AgentRole.create(
			name: 'NewString'
		)

		@duplicate_role = AgentRole.create(
			name: 'MyString'
		)
	end

	test "valid support role must be saved" do
		assert @new_role.valid?
		assert @new_role.save
	end

	test "duplicate support role must not be saved" do
		assert @duplicate_role.invalid?
	    assert_not @duplicate_role.save
	end

	test "support role name must be present" do
		@new_role.name = ''
		assert @new_role.invalid?
		assert_not @new_role.save
	end 

end
