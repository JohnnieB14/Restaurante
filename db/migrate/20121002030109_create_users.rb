class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :limit => 120, :null => false
      t.string :surname, :limit => 120, :null => false
      t.string :email, :limit => 120, :null => false
      t.integer :privileges, :null => false

      t.timestamps
    end
  end
end
