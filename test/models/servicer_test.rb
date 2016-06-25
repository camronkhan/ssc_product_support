require 'test_helper'

class ServicerTest < ActiveSupport::TestCase

	def setup
		@new_servicer = Servicer.create(
			name: 'NewString',
			address_1: 'NewString',
			city: 'NewString',
			state_province: 'NewString',
			postal_code: 'NewString',
			country: 'NewString'
		)

		@duplicate_servicer = Servicer.create(
			name: 'MyString',
			address_1: 'MyString',
			city: 'MyString',
			state_province: 'MyString',
			postal_code: 'MyString',
			country: 'MyString'
		)
	end

	test "valid servicer must be saved" do
		assert @new_servicer.valid?
		assert @new_servicer.save
	end

	test "duplicate servicer must not be saved" do
		assert @duplicate_servicer.invalid?
	    assert_not @duplicate_servicer.save
	end

	test "servicer name must be present" do
		@new_servicer.name = ''
		assert @new_servicer.invalid?
		assert_not @new_servicer.save
	end

	test "line 1 must be present" do
		@new_servicer.address_1 = ''
		assert @new_servicer.invalid?
		assert_not @new_servicer.save
	end

	test "city must be present" do
		@new_servicer.city = ''
		assert @new_servicer.invalid?
		assert_not @new_servicer.save
	end

	test "state or province must be present" do
		@new_servicer.state_province = ''
		assert @new_servicer.invalid?
		assert_not @new_servicer.save
	end

	test "postal code must be present" do
		@new_servicer.postal_code = ''
		assert @new_servicer.invalid?
		assert_not @new_servicer.save
	end

	test "country must be present" do
		@new_servicer.country = ''
		assert @new_servicer.invalid?
		assert_not @new_servicer.save
	end

end
