class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :course_id, :null => false
      t.integer :table_id, :null => false
      t.integer :client_id, :null => false
      t.boolean :paid, :null => false
      t.timestamp :request_time, :null => false

      t.timestamps
    end
  end
end
