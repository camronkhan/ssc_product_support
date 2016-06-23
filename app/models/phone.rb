class Phone < ActiveRecord::Base
	# Relations
	belongs_to :phonable, polymorphic: true
end
