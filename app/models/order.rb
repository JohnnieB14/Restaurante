class Order < ActiveRecord::Base
  attr_accessible :client_id, :course_id, :table_id, :paid, :request_time

  belongs_to :client
  belongs_to :table

  has_many :courses

end