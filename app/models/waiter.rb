class Waiter < ActiveRecord::Base
  attr_accessible :name, :surname
  
  validates :name, length: { maximum: 40, minimum: 1 }, presence: true 
  validates :surname, length: { maximum: 40, minimum: 1 }, presence: true    
  
  has_many :tables

end
