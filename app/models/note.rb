class Note < ActiveRecord::Base
	# Relations
	belongs_to :annotatable, polymorphic: true
end
