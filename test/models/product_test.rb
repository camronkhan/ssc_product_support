require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  
  fixtures :companies, :source_locations

  	def setup
  		@new_product = Product.create(
			name: 'NewString',
			description: 'NewString',
			image_url: 'NewString',
			company: companies(:valid_company),
			source_location: source_locations(:valid_source_location)
		)

		@duplicate_product = Product.create(
			name: 'MyString',
			description: 'MyString',
			image_url: 'MyString',
			company: companies(:valid_company),
			source_location: source_locations(:valid_source_location)
		)
  	end

	test "valid product must be saved" do
		assert @new_product.valid?
		assert @new_product.save
	end

	test "duplicate product must not be saved" do
		assert @duplicate_product.invalid?
	    assert_not @duplicate_product.save
	end

	test "product name must be present" do
		@new_product.name = ''
		assert @new_product.invalid?
		assert_not @new_product.save
	end

	test "product must be associated with a company" do
		@new_product.company = nil
		assert @new_product.invalid?
		assert_not @new_product.save
	end

	test "product must be associated with a source location" do
		@new_product.source_location = nil
		assert @new_product.invalid?
		assert_not @new_product.save
	end

end
