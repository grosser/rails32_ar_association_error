class Contract < ActiveRecord::Base
  attr_accessible :car_id
  belongs_to :car
end
