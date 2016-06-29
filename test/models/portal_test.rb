require 'test_helper'

class PortalTest < ActiveSupport::TestCase
  def setup
		@new_portal = Portal.create(
			name: 'NewString',
			website_url: 'NewString'
		)

		@duplicate_portal = Portal.create(
			name: 'MyString',
			website_url: 'MyString'
		)
	end

	test "valid portal must be saved" do
		assert @new_portal.valid?
		assert @new_portal.save
	end

	test "duplicate portal must not be saved" do
		assert @duplicate_portal.invalid?
	    assert_not @duplicate_portal.save
	end

	test "portal name must be present" do
		@new_portal.name = ''
		assert @new_portal.invalid?
		assert_not @new_portal.save
	end
	
end
