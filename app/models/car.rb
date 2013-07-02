class Car < ActiveRecord::Base
  has_many :parts, :inverse_of => :car
  has_many :contracts

  attr_accessor :foo

  def add_part
    parts << Part.new(:car => self)
  end

  def best_parts
    parts.where("id > 1")
  end
end
