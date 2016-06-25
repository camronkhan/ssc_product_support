class JobType < ActiveRecord::Base

	# Relations
	has_many :support_jobs
	has_many :service_jobs

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	
end
