class Car < ActiveRecord::Base
  has_many :parts, :inverse_of => :car

  attr_accessor :foo

  def add_part
    parts << Part.new(:car => self)
  end
end
