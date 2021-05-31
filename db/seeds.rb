
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying vans"

# Destroy all models
Van.destroy.all if Rails.env.development

puts "Destroying users"
User.destroy.all if Rails.env.development

puts "Destroying bookings"
Booking.destroy.all if Rails.env.development

# Create all models
puts "Creating a new user"

first_name = "Bob" # or => Faker::Name.first_name
last_name = "Kane" # or => Faker::Name.last_name

user = User.new(
  email: "#{first_name}@email.com",
  password: "123456",
  first_name: first_name,
  last_name: last_name
  )

user.save!

puts "Creating a new van"

van = Van.new(
  user_id: user.id,
  capacity: 2,
  day_pice: 50,
  brand: "Ford",
  model: "Transit",
  location_address: "IJsbaanpad 9, 1076 CV Amsterdam",
  description: Faker::paragraph(sentence_count: 3)
  )

van.save!

puts "Creating a new booking"

booking = Booking.new(
  van_id: van.id,
  user_id: user.id,
  start_date: Date.new(2021,6,10),
  end_date: Date.new(2021,6,11)
  )


booking.save!

puts 'Finished creating user, van and booking!'


### User rand?
# capacity: (0..5).sample
# capacity: (0..5).to_a.sample
