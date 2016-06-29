require 'test_helper'

class ContactCenterTest < ActiveSupport::TestCase

	def setup
		@new_center = ContactCenter.create(
			name: 'NewString'
		)

		@duplicate_center = ContactCenter.create(
			name: 'MyString'
		)
	end

	test "valid support center must be saved" do
		assert @new_center.valid?
		assert @new_center.save
	end

	test "duplicate support center must not be saved" do
		assert @duplicate_center.invalid?
	    assert_not @duplicate_center.save
	end

	test "support center name must be present" do
		@new_center.name = ''
		assert @new_center.invalid?
		assert_not @new_center.save
	end 

end
