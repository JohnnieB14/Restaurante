class Order < ActiveRecord::Base
  attr_accessible :client_id, :course_id, :table_id
  
  belongs_to :client
  belongs_to :table
  
  has_many :courses
  
end
