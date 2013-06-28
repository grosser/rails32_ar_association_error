require './config/environment'

Contract.create!
puts Car.new.parts.first(:order => "id desc") ? "FAIL" : "SUCCESS"
