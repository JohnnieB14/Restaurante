class Category < ActiveRecord::Base
  attr_accessible :image, :name

  has_many :courses

  validates :name, length: { maximum: 40, minimum: 1 }, presence: true 

end
