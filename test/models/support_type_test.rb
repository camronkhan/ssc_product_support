require 'test_helper'

class SupportTypeTest < ActiveSupport::TestCase

	def setup
		@new_type = SupportType.create(
			name: 'NewString'
		)

		@duplicate_type = SupportType.create(
			name: 'MyString'
		)
	end

	test "valid type must be saved" do
		assert @new_type.valid?
		assert @new_type.save
	end

	test "duplicate type must not be saved" do
		assert @duplicate_type.invalid?
	    assert_not @duplicate_type.save
	end

	test "type name must be present" do
		@new_type.name = ''
		assert @new_type.invalid?
		assert_not @new_type.save
	end

end
