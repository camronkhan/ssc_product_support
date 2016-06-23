class SupportJob < ActiveRecord::Base
	# Relations
	belongs_to :product
	belongs_to :support_type
	belongs_to :agent
end
