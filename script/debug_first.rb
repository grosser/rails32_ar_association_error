require './config/environment'

# PATCH
#ActiveRecord::Associations::CollectionAssociation.class_eval do
#  def first_or_last_with_no_new(type, *args)
#    return if args.first.is_a?(Hash) && owner.new_record?
#    first_or_last_without_no_new(type, *args)
#  end
#  alias_method_chain :first_or_last, :no_new
#end

Contract.create!
puts Car.new.parts.first(:order => "id desc") ? "FAIL" : "SUCCESS"
