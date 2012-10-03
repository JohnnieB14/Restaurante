class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :code, :limit => 120, :null => false
      t.integer :waiter_id, :null => false

      t.timestamps
    end
  end
end
