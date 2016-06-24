require 'test_helper'

class PhoneTest < ActiveSupport::TestCase

	def setup
		@new_phone = Phone.create(
			number: 'NewString'
		)
	end

	test "valid note must be saved" do
		assert @new_phone.valid?
		assert @new_phone.save
	end

	test "note info must be present" do
		@new_phone.number = ''
		assert @new_phone.invalid?
		assert_not @new_phone.save
	end
	
end
