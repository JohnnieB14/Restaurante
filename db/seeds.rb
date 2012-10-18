<<<<<<< HEAD
if User.count == 0
  puts "Creating Admin User"
  User.create(:name => 'Administrator', :surname => '', :email => 'admin@app.com', :privileges => -1)
=======
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)ail => 'admin@appr.com', :privileges => -1);

if User.count == 0
  puts "Creating Admin User"
  User.create(:name => 'Administrator', :surname => ' ', :email => 'admin@app.com', :privileges => -1)
>>>>>>> 09a125e7046d71b1d14ceef92c700ac3700319bd
end
