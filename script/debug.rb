require './config/environment'

c = Car.new
c.foo = 111
c.add_part
c.save!

puts (c.foo == c.parts.first.bar ? "SUCCESS" : "FAIL")
