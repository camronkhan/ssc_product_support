class Case < ActiveRecord::Base
	
	# Relations
	belongs_to :caseable, polymorphic: true
end
