require 'test_helper'

class AgentTest < ActiveSupport::TestCase
  
	fixtures :agent_roles, :contact_centers

	def setup
		@new_agent = Agent.create(
			name: 'NewString',
			available24x7: false,
			agent_role: agent_roles(:valid_agent_role),
			contact_center: contact_centers(:valid_contact_center)
		)

		@duplicate_agent = Agent.create(
			name: 'MyString',
			available24x7: false,
			agent_role: agent_roles(:valid_agent_role),
			contact_center: contact_centers(:valid_contact_center)
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
		@new_agent.available24x7 = nil
		assert @new_agent.invalid?
		assert_not @new_agent.save
	end

	test "agent must be associated with a role" do
		@new_agent.agent_role = nil
		assert @new_agent.invalid?
		assert_not @new_agent.save
	end

	test "agent must be associated with a support center" do
		@new_agent.contact_center = nil
		assert @new_agent.invalid?
		assert_not @new_agent.save
	end

end
