class Client < ActiveRecord::Base
  attr_accessible :email, :name, :paid, :request_time, :surname
  
  has_many :orders
  
end
