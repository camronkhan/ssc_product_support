require 'test_helper'

class FacilityTest < ActiveSupport::TestCase

	def setup
		@new_facility = Facility.create(
			name: 'NewString',
			address_1: 'NewString',
			city: 'NewString',
			state_province: 'NewString',
			postal_code: 'NewString',
			country: 'NewString'
		)

		@duplicate_facility = Facility.create(
			name: 'MyString',
			address_1: 'MyString',
			city: 'MyString',
			state_province: 'MyString',
			postal_code: 'MyString',
			country: 'MyString'
		)
	end

	test "valid facility must be saved" do
		assert @new_facility.valid?
		assert @new_facility.save
	end

	test "duplicate facility must not be saved" do
		assert @duplicate_facility.invalid?
	    assert_not @duplicate_facility.save
	end

	test "facility name must be present" do
		@new_facility.name = ''
		assert @new_facility.invalid?
		assert_not @new_facility.save
	end

	test "line 1 must be present" do
		@new_facility.address_1 = ''
		assert @new_facility.invalid?
		assert_not @new_facility.save
	end

	test "city must be present" do
		@new_facility.city = ''
		assert @new_facility.invalid?
		assert_not @new_facility.save
	end

	test "state or province must be present" do
		@new_facility.state_province = ''
		assert @new_facility.invalid?
		assert_not @new_facility.save
	end

	test "postal code must be present" do
		@new_facility.postal_code = ''
		assert @new_facility.invalid?
		assert_not @new_facility.save
	end

	test "country must be present" do
		@new_facility.country = ''
		assert @new_facility.invalid?
		assert_not @new_facility.save
	end

end
