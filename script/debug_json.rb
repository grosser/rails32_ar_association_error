require './config/environment'

# PATCH
#ActiveRecord::Relation.class_eval do
#  def serializable_hash(opts)
#    map { |a| a.serializable_hash(opts) }
#  end
#end

car = Car.create!
Part.create!(:car => car)

puts car.as_json(:include => :best_parts)
