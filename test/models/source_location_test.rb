require 'test_helper'

class SourceLocationTest < ActiveSupport::TestCase

	def setup
		@new_location = SourceLocation.create(
			name: 'NewString'
		)

		@duplicate_location = SourceLocation.create(
			name: 'MyString'
		)
	end

	test "valid location must be saved" do
		assert @new_location.valid?
		assert @new_location.save
	end

	test "duplicate location must not be saved" do
		assert @duplicate_location.invalid?
	    assert_not @duplicate_location.save
	end

	test "location name must be present" do
		@new_location.name = ''
		assert @new_location.invalid?
		assert_not @new_location.save
	end 

end
