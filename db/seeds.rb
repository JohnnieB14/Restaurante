if User.count == 0
  puts "Creating Admin User"
  User.create(:name => 'Administrator', :surname => '', :email => 'admin@app.com', :privileges => -1)
end
