require 'test_helper'

class CompanyTest < ActiveSupport::TestCase

	def setup
		@new_company = Company.create(
			name: 'NewString',
			website_url: 'NewString'
		)

		@duplicate_company = Company.create(
			name: 'MyString',
			website_url: 'MyString'
		)
	end

	test "valid company must be saved" do
		assert @new_company.valid?
		assert @new_company.save
	end

	test "duplicate company must not be saved" do
		assert @duplicate_company.invalid?
	    assert_not @duplicate_company.save
	end

	test "company name must be present" do
		@new_company.name = ''
		assert @new_company.invalid?
		assert_not @new_company.save
	end

end

