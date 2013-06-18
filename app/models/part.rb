class Part < ActiveRecord::Base
  attr_accessible :car_id, :car
  attr_accessor :bar
  belongs_to :car

  before_create :foo
  validate { car }
  before_create { self.bar = car.foo }

  def foo
    puts "car.foo is #{car.foo} -- car.object_id is #{car.object_id}"
  end
end
