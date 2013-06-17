class Car < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :parts

  attr_accessor :foo

  def add_part
    parts << Part.new(:car => self)
  end
end
