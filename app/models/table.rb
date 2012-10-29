class Table < ActiveRecord::Base
  attr_accessible :code, :waiter_id

  belongs_to :waiter

  validates :code, length: { maximum: 6, minimum: 6 }, presence: true 
  validates :waiter_id, presence: true    
     
end
