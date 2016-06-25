require 'test_helper'

class ServiceJobTest < ActiveSupport::TestCase

	fixtures :products, :job_types, :servicers

	def setup
		@new_job = ServiceJob.create(
			condition: 'NewString',
			product: products(:valid_product),
			job_type: job_types(:valid_job_type),
			servicer: servicers(:valid_servicer)
		)

		@duplicate_job = ServiceJob.create(
			condition: 'MyString',
			product: products(:valid_product),
			job_type: job_types(:valid_job_type),
			servicer: servicers(:valid_servicer)
		)
	end

	test "valid job must be saved" do
		assert @new_job.valid?
		assert @new_job.save
	end

	test "duplicate job must not be saved" do
		assert @duplicate_job.invalid?, "Cannot have duplicate combo of product, job type, servicer, and condition"
		assert_not @duplicate_job.save, "Cannot have duplicate combo of product, job type, servicer, and condition"
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

	test "job must be associated with a servicer" do
		@new_job.servicer = nil
		assert @new_job.invalid?
		assert_not @new_job.save
	end

end
