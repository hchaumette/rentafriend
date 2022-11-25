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
user1 = User.create!(email: "test@test.com", password: "123456", name: "Chad", avatar: "https://www.netcost-security.fr/wp-content/uploads/2021/11/1636044306_Lhistoire-de-GigaChad-lultra-masculin-mi-meme-mi-legende-urbaine.jpg")
user2 = User.create!(email: "hugo@boss.kiss", password: "123456", name: "Hugo", avatar: "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60")
user3 = User.create!(email: "lucas@boss.com", password: "123456", name: "lucas", avatar:  "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
user4 = User.create!(email: "max@boss.com", password: "123456", name: "maxence", avatar:  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
user5 = User.create!(email: Faker::Internet.unique.email, password: "123456", name: Faker::Name.unique.name, avatar: "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60")
puts " ended create users"

puts "create activities"
activity1 = Activity.create!(title: "FootBall", content: Faker::Lorem.paragraph, location: "Lille", user: user3, image_url: "https://c8.alamy.com/compfr/2dmd283/match-de-football-entre-amis-dans-le-parc-2dmd283.jpg", date:"03/02/2023", category: "sport")

activity2 = Activity.create!(title: "Hike", content: Faker::Lorem.paragraph, location: "Chamonix", user: user2, image_url: "https://www.aude.fr/sites/default/files/styles/768x430/public/media/images/4.%20Vivre%20dans%20l%27aude/4.4%20Nature/4.4.1%20Randonner/4.4.1%20MAjeure.jpg?itok=hWlfgYU1", date:"03/02/2023", category: "nature")

activity3 = Activity.create!(title: "Board Games", content: Faker::Lorem.paragraph, location: "Toulouse", user: user3, image_url:  "https://www.telerama.fr/sites/tr_master/files/styles/simplecrop1000/public/nid_cocon02_0.jpg?itok=vKFyEwJs", date:"03/02/2023", category:"games")

activity4 = Activity.create!(title: "Vist the Beaux art museum", content: Faker::Lorem.paragraph, location: "Beaux arts lille", user: user3, image_url:  "https://lejournal.cnrs.fr/sites/default/files/styles/visuel_principal/public/assets/images/adobestock_309190820_editorial_use_only_72dpi.jpg", date:"03/02/2023", category: "culture")

activity5 = Activity.create!(title: "Badminton", content: Faker::Lorem.paragraph, location: "Le shaft Lille", user: user5, image_url:  "https://www.univ-lyon2.fr/medias/photo/gettyimages-520165651_1655391378901-jpg?ID_FICHE=52443", date:"03/02/2023", category: "sport")

activity6 = Activity.create!(title: "Basket", content: Faker::Lorem.paragraph, location: "Lille", user: user2, image_url: "https://img.le-dictionnaire.com/basket-sport.jpg", date:"03/02/2023", category: "sport")

puts " ended create activites"
