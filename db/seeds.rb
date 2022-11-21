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


 Booking.create!()


puts "create activities"
activity1 = Activity.create!(title: Faker::Hobby.activity, content: Faker::Lorem.paragraph, location: Faker::FunnyName.name, user: user1)
activity2 = Activity.create!(title: Faker::Hobby.activity, content: Faker::Lorem.paragraph, location: Faker::FunnyName.name, user: user2)
activity3 = Activity.create!(title: Faker::Hobby.activity, content: Faker::Lorem.paragraph, location: Faker::FunnyName.name, user: user3)
activity4 = Activity.create!(title: Faker::Hobby.activity, content: Faker::Lorem.paragraph, location: Faker::FunnyName.name, user: user4)
activity5 = Activity.create!(title: Faker::Hobby.activity, content: Faker::Lorem.paragraph, location: Faker::FunnyName.name, user: user5)
puts " ended create activites"
