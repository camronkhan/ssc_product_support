require 'test_helper'

class SplitTest < ActiveSupport::TestCase

	fixtures :agents

	def setup
		@new_queue = Split.create(
			queue: 'NewString',
			description: 'NewString',
			agent: agents(:valid_agent)
		)

		@duplicate_queue = Split.create(
			queue: 'MyString',
			description: 'MyString',
			agent: agents(:valid_agent)
		)
	end

	test "valid agent must be saved" do
		assert @new_queue.valid?
		assert @new_queue.save
	end

	test "duplicate agent must not be saved" do
		assert @duplicate_queue.invalid?
	    assert_not @duplicate_queue.save
	end

	test "queue must be present" do
		@new_queue.queue = ''
		assert @new_queue.invalid?
		assert_not @new_queue.save
	end

	test "queue must be associated with an agent" do
		@new_queue.agent = nil
		assert @new_queue.invalid?
		assert_not @new_queue.save
	end

end
