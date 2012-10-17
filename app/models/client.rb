class Client < ActiveRecord::Base
  attr_accessible :email, :name, :surname, :password
  
  has_many :orders
  
end