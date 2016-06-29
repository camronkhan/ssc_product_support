require 'test_helper'

class OperationDayTest < ActiveSupport::TestCase
  
	def setup
		@new_operation_day = OperationDay.create(
			name: 'NewString'
		)

		@duplicate_operation_day = OperationDay.create(
			name: 'MyString'
		)
	end

	test "valid operation_day must be saved" do
		assert @new_operation_day.valid?
		assert @new_operation_day.save
	end

	test "duplicate operation_day must not be saved" do
		assert @duplicate_operation_day.invalid?
	    assert_not @duplicate_operation_day.save
	end

	test "operation_day name must be present" do
		@new_operation_day.name = ''
		assert @new_operation_day.invalid?
		assert_not @new_operation_day.save
	end

end
