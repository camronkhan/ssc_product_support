class Email < ActiveRecord::Base
	
	# Relations
	belongs_to :emailable, polymorphic: true
end
