require 'test_helper'

class OperationTimeTest < ActiveSupport::TestCase

	fixtures :agents, :operation_days

	def setup
		@new_operation_time = OperationTime.create(
			begin: '2016-06-23 12:33:24',
			end: '2016-06-23 12:33:24',
			agent: agents(:valid_agent),
			operation_day: operation_days(:valid_operation_day)
		)
	end

	test "valid note must be saved" do
		assert @new_operation_time.valid?
		assert @new_operation_time.save
	end

	test "note begin time must be present" do
		@new_operation_time.begin = ''
		assert @new_operation_time.invalid?
		assert_not @new_operation_time.save
	end

	test "note end time must be present" do
		@new_operation_time.end = ''
		assert @new_operation_time.invalid?
		assert_not @new_operation_time.save
	end

	test "agent must be associated with an agent" do
		@new_operation_time.agent = nil
		assert @new_operation_time.invalid?
		assert_not @new_operation_time.save
	end

	test "agent must be associated with a operation_day" do
		@new_operation_time.operation_day = nil
		assert @new_operation_time.invalid?
		assert_not @new_operation_time.save
	end

end
