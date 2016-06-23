class Agent < ActiveRecord::Base
  belongs_to :split
  belongs_to :support_function
  belongs_to :support_center
end
