require 'test_helper'

class ManufacturerTest < ActiveSupport::TestCase

	def setup
		@new_manufacturer = Manufacturer.create(
			name: 'NewString',
			website_url: 'NewString'
		)

		@duplicate_manufacturer = Manufacturer.create(
			name: 'MyString',
			website_url: 'MyString'
		)
	end

	test "valid manufacturer must be saved" do
		assert @new_manufacturer.valid?
		assert @new_manufacturer.save
	end

	test "duplicate manufacturer must not be saved" do
		assert @duplicate_manufacturer.invalid?
	    assert_not @duplicate_manufacturer.save
	end

	test "manufacturer name must be present" do
		@new_manufacturer.name = ''
		assert @new_manufacturer.invalid?
		assert_not @new_manufacturer.save
	end

end

