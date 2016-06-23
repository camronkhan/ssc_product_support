class Manufacturer < ActiveRecord::Base
	# Relations
	has_many :products
	has_many :addresses, as: :addressable
	has_many :notes, as: :annotatable
	has_many :phones, as: :phonable
end
