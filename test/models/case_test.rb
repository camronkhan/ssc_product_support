require 'test_helper'

class CaseTest < ActiveSupport::TestCase
  
	def setup
		@new_queue = Case.create(
			queue: 'NewString',
			description: 'NewString'
		)

		@duplicate_queue = Case.create(
			queue: 'MyString',
			description: 'MyString'
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
	
end
