class ServiceJob < ActiveRecord::Base
  belongs_to :product
  belongs_to :servicer
end
