require 'test_helper'

class UserTest < ActiveSupport::TestCase

	test "should save valid user" do
		assert users(:valid).save
	end

end
