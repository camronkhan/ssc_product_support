class JobType < ActiveRecord::Base

	# Relations
	has_many :agent_jobs
	has_many :facility_jobs

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	
end
