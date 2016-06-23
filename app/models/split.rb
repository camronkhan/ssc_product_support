class Split < ActiveRecord::Base
	# Relations
	belongs_to :splitable, polymorphic: true
end
