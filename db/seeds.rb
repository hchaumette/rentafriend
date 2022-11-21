# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
puts "seed started"

puts "create users"
user1 = User.create!(email: Faker::Internet.unique.email, password: "123456", name: Faker::Name.unique.name)
user2 = User.create!(email: Faker::Internet.unique.email, password: "123456", name: Faker::Name.unique.name)
user3 = User.create!(email: Faker::Internet.unique.email, password: "123456", name: Faker::Name.unique.name)
user4 = User.create!(email: Faker::Internet.unique.email, password: "123456", name: Faker::Name.unique.name)
user5 = User.create!(email: Faker::Internet.unique.email, password: "123456", name: Faker::Name.unique.name)
puts " ended create users"


puts "create activities"
activity1 = Activity.create!(title: Faker::Hobby.activity, content: Faker::Lorem.paragraph, location: Faker::FunnyName.name, user: user1)
activity2 = Activity.create!(title: Faker::Hobby.activity, content: Faker::Lorem.paragraph, location: Faker::FunnyName.name, user: user2)
activity3 = Activity.create!(title: Faker::Hobby.activity, content: Faker::Lorem.paragraph, location: Faker::FunnyName.name, user: user3)
activity4 = Activity.create!(title: Faker::Hobby.activity, content: Faker::Lorem.paragraph, location: Faker::FunnyName.name, user: user4)
activity5 = Activity.create!(title: Faker::Hobby.activity, content: Faker::Lorem.paragraph, location: Faker::FunnyName.name, user: user5)
puts " ended create activites"

puts "create booking"
 booking1 = Booking.create!(user: user1, activity: activity4, state: "pending", start_date: "03/02/2023", end_date: "10/02/2023")
 booking1 = Booking.create!(user: user5, activity: activity1, state: "accepted", start_date: "03/12/2022", end_date: "10/12/2022")
 booking3 = Booking.create!(user: user4, activity: activity2, state: "pending", start_date: "23/11/2022", end_date: "10/01/2023")
 booking4 = Booking.create!(user: user2, activity: activity3, state: "pending", start_date: "19/12/2022", end_date: "10/01/2023")
 booking5 = Booking.create!(user: user3, activity: activity5, state: "pending", start_date: "03/12/2022", end_date: "04/12/2022")
puts "ended create booking"
