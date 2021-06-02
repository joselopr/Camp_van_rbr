
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


puts "Destroying bookings"
Booking.destroy_all #if Rails.env.development

puts "Destroying vans"

### Destroy all models

Van.destroy_all #if Rails.env.development

puts "Destroying users"
User.destroy_all #if Rails.env.development

### Create all models
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

van1 = Van.new(
  user_id: user.id,
  capacity: 2,
  day_price: 50,
  brand: "Ford",
  model: "Transit",
  address: "IJsbaanpad 9, 1076 CV Amsterdam",
  description: "Self build van with space for 2 and tons of storage. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." # => not working => Faker::paragraph(sentence_count: 3)
  )

van1.save!

van2 = Van.new(
  user_id: user.id,
  capacity: 2,
  day_price: 75,
  brand: "VW",
  model: "Transporter",
  address: "Goudsesingel 580, 3011KS Rotterdam",
  description: "Classic van with room for 2. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." # => not working => Faker::paragraph(sentence_count: 3)
  )

van2.save!

van3 = Van.new(
  user_id: user.id,
  capacity: 3,
  day_price: 80,
  brand: "Mercedes",
  model: "Sprinter",
  address: "Damrak 9, 1012 LG Amsterdam",
  description: "Huge van that up to 3 people can stay in. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." # => not working => Faker::paragraph(sentence_count: 3)
  )

van3.save!

van4 = Van.new(
  user_id: user.id,
  capacity: 2,
  day_price: 60,
  brand: "Ford",
  model: "Transit",
  address: "Spaklerweg 38, 1096 BA Amsterdam",
  description: "Self build van with space for 2 and tons of storage. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." # => not working => Faker::paragraph(sentence_count: 3)
  )

van4.save!

van5 = Van.new(
  user_id: user.id,
  capacity: 2,
  day_price: 70,
  brand: "Mercedes",
  model: "Sprinter",
  address: "Langerstraat 21, 1015 AK Amsterdam",
  description: "Self build van with space for 2 and tons of storage. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." # => not working => Faker::paragraph(sentence_count: 3)
  )

van5.save!

van6 = Van.new(
  user_id: user.id,
  capacity: 2,
  day_price: 65,
  brand: "VW",
  model: "Transporter",
  address: "Buitenveldertselaan 184, 1081 AC Amsterdam",
  description: "Self build van with space for 2 and tons of storage. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." # => not working => Faker::paragraph(sentence_count: 3)
  )

van6.save!

van7 = Van.new(
  user_id: user.id,
  capacity: 2,
  day_price: 40,
  brand: "Ford",
  model: "Transit",
  address: "Plantage Muidergracht 14, 1018 TV Amsterdam",
  description: "Self build van with space for 2 and tons of storage. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." # => not working => Faker::paragraph(sentence_count: 3)
  )

van7.save!

van8 = Van.new(
  user_id: user.id,
  capacity: 3,
  day_price: 90,
  brand: "Ford",
  model: "Transit",
  address: "IJsbaanpad 9, 1076 CV Amsterdam",
  description: "Self build van with space for 2 and tons of storage. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." # => not working => Faker::paragraph(sentence_count: 3)
  )

van8.save!

puts "Creating a new booking"

booking = Booking.new(
  van_id: van1.id,
  user_id: user.id,
  start_date: Date.new(2021,6,10),
  end_date: Date.new(2021,6,11)
  )


booking.save!

puts 'Finished creating user, van and booking!'


### User rand?
# capacity: (0..5).sample
# capacity: (0..5).to_a.sample
