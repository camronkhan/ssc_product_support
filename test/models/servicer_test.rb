require 'test_helper'

class ServicerTest < ActiveSupport::TestCase

	def setup
		@new_servicer = Servicer.create(
			name: 'NewString'
		)

		@duplicate_servicer = Servicer.create(
			name: 'MyString'
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

end
