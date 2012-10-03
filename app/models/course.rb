class Course < ActiveRecord::Base
  attr_accessible :category_id, :image, :name, :price
  
  belongs_to :category
  belongs_to :order
  
end
