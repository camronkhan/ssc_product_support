class Product < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :source_type
  belongs_to :source_location
end
