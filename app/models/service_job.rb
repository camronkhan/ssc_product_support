class ServiceJob < ActiveRecord::Base
	# Relations
	belongs_to :product
	belongs_to :servicer
end
