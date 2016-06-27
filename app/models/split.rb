class Split < ActiveRecord::Base
	
	# Relations
	belongs_to :agent

	# Validations
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates :agent, presence: true
	validates_associated :agent
	
end
