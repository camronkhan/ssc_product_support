require 'test_helper'

class AgentTest < ActiveSupport::TestCase
  
	fixtures :support_functions, :support_centers

	def setup
		@new_agent = Agent.create(
			name: 'NewString',
			operates24x7: false,
			support_function: support_functions(:valid_support_function),
			support_center: support_centers(:valid_support_center)
		)

		@duplicate_agent = Agent.create(
			name: 'MyString',
			operates24x7: false,
			support_function: support_functions(:valid_support_function),
			support_center: support_centers(:valid_support_center)
		)
	end

	test "valid agent must be saved" do
		assert @new_agent.valid?
		assert @new_agent.save
	end

	test "duplicate agent must not be saved" do
		assert @duplicate_agent.invalid?
	    assert_not @duplicate_agent.save
	end

	test "agent name must be present" do
		@new_agent.name = ''
		assert @new_agent.invalid?
		assert_not @new_agent.save
	end

	test "agent must indicate if 24x7 operations" do
		@new_agent.operates24x7 = nil
		assert @new_agent.invalid?
		assert_not @new_agent.save
	end

	test "agent must be associated with a support function" do
		@new_agent.support_function = nil
		assert @new_agent.invalid?
		assert_not @new_agent.save
	end

	test "agent must be associated with a support center" do
		@new_agent.support_center = nil
		assert @new_agent.invalid?
		assert_not @new_agent.save
	end

end
