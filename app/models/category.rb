class Category < ActiveRecord::Base
  attr_accessible :image, :name
  
  has_many :courses
  
end
