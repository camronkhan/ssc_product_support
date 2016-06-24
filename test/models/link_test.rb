require 'test_helper'

class LinkTest < ActiveSupport::TestCase

	def setup
		@new_link = Link.create(
			url: 'NewString',
			title: 'NewString',
			description: 'NewString'
		)
	end

	test "valid link must be saved" do
		assert @new_link.valid?
		assert @new_link.save
	end

	test "link url must be present" do
		@new_link.url = ''
		assert @new_link.invalid?
		assert_not @new_link.save
	end

	test "link title must be present" do
		@new_link.title = ''
		assert @new_link.invalid?
		assert_not @new_link.save
	end
	
end
