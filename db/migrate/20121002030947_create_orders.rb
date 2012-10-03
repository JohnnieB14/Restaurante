class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :course_id, :null => false
      t.integer :table_id, :null => false
      t.integer :client_id, :null => false

      t.timestamps
    end
  end
end
