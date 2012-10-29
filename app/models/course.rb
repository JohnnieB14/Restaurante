class Course < ActiveRecord::Base
  attr_accessible :category_id, :image, :name, :price

  belongs_to :category
  belongs_to :order

  validates :name, length: { maximum: 40, minimum: 1 }, presence: true 
  validates :price, length: { maximum: 4, minimum: 2 }, presence: true 
  validates :category_id, presence: true

end
