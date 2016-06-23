class SupportCenter < ActiveRecord::Base

	# Relations
	has_many :agents

	# Polymorphic Attributes
	has_many :notes, as: :annotatable
end
