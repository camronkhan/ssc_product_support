require 'test_helper'

class ModelNumberTest < ActiveSupport::TestCase

	fixtures :products
	
	def setup
		@new_model = ModelNumber.create(
			model: 'NewString',
			description: 'NewString',
			product: products(:valid_product)
		)

		@duplicate_model = ModelNumber.create(
			model: 'MyString',
			description: 'MyString',
			product: products(:valid_product)
		)
	end

	test "valid model must be saved" do
		assert @new_model.valid?
		assert @new_model.save
	end

	test "duplicate model must not be saved" do
		assert @duplicate_model.invalid?
	    assert_not @duplicate_model.save
	end

	test "model number must be present" do
		@new_model.model = ''
		assert @new_model.invalid?
		assert_not @new_model.save
	end

	test "model must be associated with a product" do
		@new_model.product = nil
		assert @new_model.invalid?
		assert_not @new_model.save
	end

end
