require 'test_helper'

class FacilityJobTest < ActiveSupport::TestCase

	fixtures :products, :job_types, :facilities

	def setup
		@new_job = FacilityJob.create(
			condition: 'NewString',
			product: products(:valid_product),
			job_type: job_types(:valid_job_type),
			facility: facilities(:valid_facility)
		)

		@duplicate_job = FacilityJob.create(
			condition: 'MyString',
			product: products(:valid_product),
			job_type: job_types(:valid_job_type),
			facility: facilities(:valid_facility)
		)
	end

	test "valid job must be saved" do
		assert @new_job.valid?
		assert @new_job.save
	end

	test "duplicate job must not be saved" do
		assert @duplicate_job.invalid?, "Cannot have duplicate combo of product, job type, facility, and condition"
		assert_not @duplicate_job.save, "Cannot have duplicate combo of product, job type, facility, and condition"
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

	test "job must be associated with a facility" do
		@new_job.facility = nil
		assert @new_job.invalid?
		assert_not @new_job.save
	end

end
