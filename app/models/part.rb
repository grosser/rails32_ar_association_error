class Part < ActiveRecord::Base
  attr_accessible :car_id, :car
  belongs_to :car

  before_create :foo

  def foo
    puts car.object_id
  end
end
