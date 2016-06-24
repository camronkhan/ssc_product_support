require 'test_helper'

class SupportJobTest < ActiveSupport::TestCase

	fixtures :products, :support_types, :agents

	def setup
		@new_job = SupportJob.create(
			condition: 'NewString',
			product: products(:valid_product),
			support_type: support_types(:valid_support_type),
			agent: agents(:valid_agent)
		)

		@duplicate_job = SupportJob.create(
			condition: 'MyString',
			product: products(:valid_product),
			support_type: support_types(:valid_support_type),
			agent: agents(:valid_agent)
		)
	end

	test "valid job must be saved" do
		assert @new_job.valid?
		assert @new_job.save
	end

	test "duplicate job must not be saved" do
		assert @duplicate_job.valid?, "Cannot have duplicate combo of product, support type, agent, and condition"
		assert @duplicate_job.save, "Cannot have duplicate combo of product, support type, agent, and condition"
	end

	test "job condition must be present" do
		@new_job.condition = ''
		assert @new_job.invalid?
		assert_not @new_job.save
	end

	test "job must be associated with a product" do
		@new_job.product = nil
		assert @new_job.invalid?
		assert_not @new_job.save
	end

	test "job must be associated with a support type" do
		@new_job.support_type = nil
		assert @new_job.invalid?
		assert_not @new_job.save
	end

	test "job must be associated with an agent" do
		@new_job.agent = nil
		assert @new_job.invalid?
		assert_not @new_job.save
	end

end
