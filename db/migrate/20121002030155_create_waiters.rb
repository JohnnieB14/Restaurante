class CreateWaiters < ActiveRecord::Migration
  def change
    create_table :waiters do |t|
      t.string :name, :limit => 120, :null => false
      t.string :surname, :limit => 120, :null => false

      t.timestamps
    end
  end
end
