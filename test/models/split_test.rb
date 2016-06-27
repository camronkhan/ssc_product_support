require 'test_helper'

class SplitTest < ActiveSupport::TestCase

	fixtures :agents

	def setup
		@new_split = Split.create(
			name: 'NewString',
			agent: agents(:valid_agent)
		)

		@duplicate_split = Split.create(
			name: 'MyString',
			agent: agents(:valid_agent)
		)
	end

	test "valid agent must be saved" do
		assert @new_split.valid?
		assert @new_split.save
	end

	test "duplicate agent must not be saved" do
		assert @duplicate_split.invalid?
	    assert_not @duplicate_split.save
	end

	test "split must be present" do
		@new_split.name = ''
		assert @new_split.invalid?
		assert_not @new_split.save
	end

	test "split must be associated with an agent" do
		@new_split.agent = nil
		assert @new_split.invalid?
		assert_not @new_split.save
	end

end
