class Link < ActiveRecord::Base
	
	# Relations
	belongs_to :linkable, polymorphic: true
end
