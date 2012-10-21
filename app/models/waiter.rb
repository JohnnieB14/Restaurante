class Waiter < ActiveRecord::Base
  attr_accessible :name, :surname

  has_many :tables

end
