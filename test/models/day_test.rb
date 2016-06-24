require 'test_helper'

class DayTest < ActiveSupport::TestCase
  
	def setup
		@new_day = Day.create(
			name: 'NewString'
		)

		@duplicate_day = Day.create(
			name: 'MyString'
		)
	end

	test "valid day must be saved" do
		assert @new_day.valid?
		assert @new_day.save
	end

	test "duplicate day must not be saved" do
		assert @duplicate_day.invalid?
	    assert_not @duplicate_day.save
	end

	test "day name must be present" do
		@new_day.name = ''
		assert @new_day.invalid?
		assert_not @new_day.save
	end

end
