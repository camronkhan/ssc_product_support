require 'test_helper'

class SupportFunctionTest < ActiveSupport::TestCase

	def setup
		@new_function = SupportFunction.create(
			name: 'NewString'
		)

		@duplicate_function = SupportFunction.create(
			name: 'MyString'
		)
	end

	test "valid support function must be saved" do
		assert @new_function.valid?
		assert @new_function.save
	end

	test "duplicate support function must not be saved" do
		assert @duplicate_function.invalid?
	    assert_not @duplicate_function.save
	end

	test "support function name must be present" do
		@new_function.name = ''
		assert @new_function.invalid?
		assert_not @new_function.save
	end 

end
