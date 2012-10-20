class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, :limit => 120, :null => false
      t.integer :price, :null => false
      t.string :image, :limit => 120, :null => false
      t.integer :category_id, :null => false

      t.timestamps
    end
  end
end
