if User.count == 0 && Client.count == 0 && Waiter.count == 0 && Table.count == 0 && Category.count == 0 && Course.count == 0
  puts "Creating Admin User"
  User.create(:name => 'Administrator', :surname => 'User', :email => 'admin@app.com', :password => '5cd29c08df861e0cb8ecf344a1fe6266',:password_confirmation => '5cd29c08df861e0cb8ecf344a1fe6266', :privileges => -1)
  puts "Creating Test User"
  Client.create(:name => 'Test', :surname => 'User', :email => 'testu@app.com', :password => 'be092a414817ff761949e046f4adf169',:password_confirmation => 'be092a414817ff761949e046f4adf169')
  puts "Creating Test Waiters"
  Waiter.create(:name => 'Test', :surname => 'Waiter')  
  Waiter.create(:name => 'Final', :surname => 'Waiter')
  puts "Creating Test Tables"
  Table.create(:code => '295bea', :waiter_id => 1)
  Table.create(:code => 'd6a5ad', :waiter_id => 2)
  puts "Creating Test Categories"
  Category.create(:name => 'Bebidas', :image => 'assets/images/beverages.png')
  Category.create(:name => 'Postres', :image => 'assets/images/desserts.png')
  Category.create(:name => 'Mariscos', :image => 'assets/images/seafood.png')
  puts "Creating Test Courses"
  puts " Category 1"
  Course.create(:name => 'Coca', :price => 30, :image => 'assets/images/courses/coke.png', :category_id => 1)
  Course.create(:name => 'Margarita', :price => 70, :image => 'assets/images/courses/margarita.png', :category_id => 1)
  puts " Category 2"
  Course.create(:name => 'Pastel de Chocolate', :price => 40, :image => 'assets/images/courses/chocolate_c.png', :category_id => 2)
  Course.create(:name => 'Pastel de Fresa', :price => 60, :image => 'assets/images/courses/strawberry_c.png', :category_id => 2)
  puts " Category 3"
  Course.create(:name => 'Coctél de Camarón', :price => 100, :image => 'assets/images/courses/shrimp.png', :category_id => 3)
  Course.create(:name => 'Salmón a la Plancha', :price => 300, :image => 'assets/images/courses/salmon.png', :category_id => 3)
  puts "Initial Setup Done"
else
  puts "Initial Setup Alredy Done - Drop/Truncate Database To Seed Again"
end