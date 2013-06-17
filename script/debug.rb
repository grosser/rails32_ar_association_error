require './config/environment'

c = Car.new
c.foo = 111
c.add_part
c.save!

puts (c.object_id == c.parts.first.car.object_id ? "SUCCESS" : "FAIL")
