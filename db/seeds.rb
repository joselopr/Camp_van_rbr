
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"


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
  address: "wagenaarstraat 307, 1093CN Amsterdam",
  description: "Self build van with space for 2 and tons of storage. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." # => not working => Faker::paragraph(sentence_count: 3)
  )

file = URI.open('https://images.squarespace-cdn.com/content/v1/5cee2e21687a1500015aefb3/1581542572040-PJZZZ8TLPX62HJZNKWHA/ke17ZwdGBToddI8pDm48kGvciYz_F7e2cKgHl6aKbOB7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0jG2lbcDYBOeMi4OFSYem8C6_1umBlU6AyzZibxGd5CiIyYt3UyZsjDc849ulGdbFA/high+ex+web.jpg?format=1000w')
van1.photo.attach(io: file, filename: 'van-1.png', content_type: 'image/png')

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

file = URI.open('https://res.cloudinary.com/dsykouw6i/image/upload/v1622712955/photo-1601231091320-5ee5140fcd09_zka4wq.jpg')
van2.photo.attach(io: file, filename: 'van-2.png', content_type: 'image/png')

van2.save!

van3 = Van.new(
  user_id: user.id,
  capacity: 3,
  day_price: 80,
  brand: "Mercedes",
  model: "Sprinter",
  address: "geuzenstraat 24, 1056KD Amsterdam",
  description: "Huge van that up to 3 people can stay in. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." # => not working => Faker::paragraph(sentence_count: 3)
  )

file = URI.open('https://res.cloudinary.com/dsykouw6i/image/upload/v1622712544/Camper-interior-designs1_nbrhxw.jpg')
van3.photo.attach(io: file, filename: 'van-3.png', content_type: 'image/png')


van3.save!

van4 = Van.new(
  user_id: user.id,
  capacity: 2,
  day_price: 60,
  brand: "Ford",
  model: "Transit",
  address: "Spaklerweg 38, 1096BA Amsterdam",
  description: "Self build van with space for 2 and tons of storage. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." # => not working => Faker::paragraph(sentence_count: 3)
  )

file = URI.open('https://res.cloudinary.com/dsykouw6i/image/upload/v1622712544/eeef246d075a70c2456c83acaf479265_r5fk8f.jpg')
van4.photo.attach(io: file, filename: 'van-4.png', content_type: 'image/png')

van4.save!

van5 = Van.new(
  user_id: user.id,
  capacity: 2,
  day_price: 70,
  brand: "VW",
  model: "Transport 3",
  address: "Langerstraat 21, 1015AK Amsterdam",
  description: "Self build van with space for 2 and tons of storage. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." # => not working => Faker::paragraph(sentence_count: 3)
  )
file = URI.open('https://images.unsplash.com/photo-1515876305430-f06edab8282a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')
van5.photo.attach(io: file, filename: 'van-5.png', content_type: 'image/png')

van5.save!

van6 = Van.new(
  user_id: user.id,
  capacity: 2,
  day_price: 65,
  brand: "VW",
  model: "Transporter",
  address: "Buitenveldertselaan 184, 1081AC Amsterdam",
  description: "Self build van with space for 2 and tons of storage. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." # => not working => Faker::paragraph(sentence_count: 3)
  )

file = URI.open('https://images.unsplash.com/photo-1534437401535-8cdaa9b93ae4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')
van6.photo.attach(io: file, filename: 'van-6.png', content_type: 'image/png')

van6.save!

van7 = Van.new(
  user_id: user.id,
  capacity: 2,
  day_price: 40,
  brand: "Toyota",
  model: "Hiace",
  address: "Plantage Muidergracht 14, 1018TV Amsterdam",
  description: "Self build van with space for 2 and tons of storage. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." # => not working => Faker::paragraph(sentence_count: 3)
  )

file = URI.open('https://images.unsplash.com/photo-1610511402844-c6b49f644a60?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80')
van7.photo.attach(io: file, filename: 'van-7.png', content_type: 'image/png')

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

file = URI.open('https://images.unsplash.com/photo-1516394399858-ae258cf724cc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')
van8.photo.attach(io: file, filename: 'van-8.png', content_type: 'image/png')

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
