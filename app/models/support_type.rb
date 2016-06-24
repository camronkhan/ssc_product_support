class SupportType < ActiveRecord::Base

	# Relations
	has_many :support_jobs

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	
end
