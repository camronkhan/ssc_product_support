require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  
	def setup
		@new_address = Address.create(
			company: 'MyString',
			line_1: 'MyString',
			city: 'MyString',
			state_province: 'MyString',
			postal_code: 'MyString',
			country: 'MyString'
		)
	end

	test "valid address must be saved" do
		assert @new_address.valid?
		assert @new_address.save
	end

	test "company must be present" do
		@new_address.company = ''
		assert @new_address.invalid?
		assert_not @new_address.save
	end

	test "line 1 must be present" do
		@new_address.line_1 = ''
		assert @new_address.invalid?
		assert_not @new_address.save
	end

	test "city must be present" do
		@new_address.city = ''
		assert @new_address.invalid?
		assert_not @new_address.save
	end

	test "state or province must be present" do
		@new_address.state_province = ''
		assert @new_address.invalid?
		assert_not @new_address.save
	end

	test "postal code must be present" do
		@new_address.postal_code = ''
		assert @new_address.invalid?
		assert_not @new_address.save
	end

	test "country must be present" do
		@new_address.country = ''
		assert @new_address.invalid?
		assert_not @new_address.save
	end
end
