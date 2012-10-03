class Order < ActiveRecord::Base
  attr_accessible :client_id, :course_id, :table_id
end
