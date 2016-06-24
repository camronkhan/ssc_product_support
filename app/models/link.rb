class Link < ActiveRecord::Base
	
	# Relations
	belongs_to :linkable, polymorphic: true

	# Validations
	validates :url, presence: true
	validates :title, presence: true

end
