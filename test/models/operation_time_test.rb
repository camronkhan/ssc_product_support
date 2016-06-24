require 'test_helper'

class OperationTimeTest < ActiveSupport::TestCase

	fixtures :agents, :days

	def setup
		@new_operation_time = OperationTime.create(
			open: '2016-06-23 12:33:24',
			close: '2016-06-23 12:33:24',
			agent: agents(:valid_agent),
			day: days(:valid_day)
		)
	end

	test "valid note must be saved" do
		assert @new_operation_time.valid?
		assert @new_operation_time.save
	end

	test "note open time must be present" do
		@new_operation_time.open = ''
		assert @new_operation_time.invalid?
		assert_not @new_operation_time.save
	end

	test "note close time must be present" do
		@new_operation_time.close = ''
		assert @new_operation_time.invalid?
		assert_not @new_operation_time.save
	end

	test "agent must be associated with an agent" do
		@new_operation_time.agent = nil
		assert @new_operation_time.invalid?
		assert_not @new_operation_time.save
	end

	test "agent must be associated with a day" do
		@new_operation_time.day = nil
		assert @new_operation_time.invalid?
		assert_not @new_operation_time.save
	end

end
