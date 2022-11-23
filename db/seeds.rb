# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Booking.destroy_all
Activity.destroy_all
User.destroy_all


puts "seed started"

puts "create users"
user1 = User.create!(email: "test@test.com", password: "123456", name: Faker::Name.unique.name, avatar: "https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60")
user2 = User.create!(email: "hugo@boss.kiss", password: "123456", name: Faker::Name.unique.name, avatar:  "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60")
user3 = User.create!(email: Faker::Internet.unique.email, password: "123456", name: Faker::Name.unique.name, avatar:  "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
user4 = User.create!(email: Faker::Internet.unique.email, password: "123456", name: Faker::Name.unique.name, avatar:  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
user5 = User.create!(email: Faker::Internet.unique.email, password: "123456", name: Faker::Name.unique.name, avatar:  "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60")
puts " ended create users"


puts "create activities"
activity1 = Activity.create!(title: Faker::Hobby.activity, content: Faker::Lorem.paragraph, location: Faker::FunnyName.name, user: user1, image_url:  "https://images.unsplash.com/photo-1660745878236-c1ae062489b2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8Qm4tRGpyY0Jyd298fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60", date:"03/02/2023")

activity2 = Activity.create!(title: Faker::Hobby.activity, content: Faker::Lorem.paragraph, location: Faker::FunnyName.name, user: user2, image_url:  "https://plus.unsplash.com/premium_photo-1664369473096-9c84991ed94b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE1fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60", date:"03/02/2023")

activity3 = Activity.create!(title: Faker::Hobby.activity, content: Faker::Lorem.paragraph, location: Faker::FunnyName.name, user: user3, image_url:  "https://images.unsplash.com/photo-1646297226339-febd1eaee532?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIwfEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60", date:"03/02/2023")

activity4 = Activity.create!(title: Faker::Hobby.activity, content: Faker::Lorem.paragraph, location: Faker::FunnyName.name, user: user1, image_url:  "https://images.unsplash.com/photo-1667725045016-2cab82a2596c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI2fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60", date:"03/02/2023")

activity5 = Activity.create!(title: Faker::Hobby.activity, content: Faker::Lorem.paragraph, location: Faker::FunnyName.name, user: user5, image_url:  "https://images.unsplash.com/photo-1667502245522-a4d20b454918?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI4fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60", date:"03/02/2023")
puts " ended create activites"

puts "create booking"
 booking1 = Booking.create!(user: user1, activity: activity3, state: "pending")
 booking1 = Booking.create!(user: user5, activity: activity1, state: "accepted")
 booking3 = Booking.create!(user: user4, activity: activity2, state: "declined")
 booking4 = Booking.create!(user: user2, activity: activity4, state: "accepted")
 booking5 = Booking.create!(user: user1, activity: activity5, state: "accepted")
puts "ended create booking"
