class SupportJob < ActiveRecord::Base
  belongs_to :product
  belongs_to :support_type
  belongs_to :agent
end
