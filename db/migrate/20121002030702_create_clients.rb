class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, :limit => 120, :null => false
      t.string :surname, :limit => 120, :null => false
      t.string :email, :limit => 120, :null => false
      t.boolean :paid, :null => false
      t.timestamp :request_time, :null => false

      t.timestamps
    end
  end
end
