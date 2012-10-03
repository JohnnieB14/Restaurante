class Course < ActiveRecord::Base
  attr_accessible :category_id, :image, :name, :price
end
