class Table < ActiveRecord::Base
  attr_accessible :code, :waiter_id
  
  belongs_to :waiter
  
end
