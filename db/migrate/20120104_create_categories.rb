class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, :limit => 120, :null => false
      t.string :image, :limit => 120, :null => false

      t.timestamps
    end
  end
end
