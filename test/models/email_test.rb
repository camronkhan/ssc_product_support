require 'test_helper'

class EmailTest < ActiveSupport::TestCase

	def setup
		@new_email = Email.create(
			address: 'NewString@NewString'
		)

		@duplicate_email = Email.create(
			address: 'MyString@NewString'
		)
	end

	test "valid email must be saved" do
		#assert @new_email.valid?
		assert @new_email.save
	end

	test "email address must be present" do
		@new_email.address = ''
		assert @new_email.invalid?
		assert_not @new_email.save
	end

	test "email address must contain @ symbol" do
		@new_email.address = 'NewString#NewString.com'
		assert @new_email.invalid?
		assert_not @new_email.save
	end

end
