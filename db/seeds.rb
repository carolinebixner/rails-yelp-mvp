# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

puts "1 - Cleaning up"
Restaurant.destroy_all

puts "2 -Creating your restaurants..."
maris_piper = { name: "Maris Piper", address: "Prinsengracht 5, Amsterdam, 1089Ll", category: "italian" }
la_perla = { name: "La Perla", address: "De Jordaan, Amsterdam, 7834LX", category: "chinese" }
spaghetteria = { name: "Spaghetteria", address: "Herengracht 10, Amsterdam, 1251AB", category: "belgian" }
binnenvisser = { name: "Binnenvisser", address: "Eerste Constantijn Huygestraat 124, 1078LL", category: "french" }
cafe_george = { name: "Cafe George", address: "Da Costakade 3, Amsterdam, 1257AX", category: "french" }

counter = 2
[maris_piper, la_perla, spaghetteria, binnenvisser, cafe_george].each do |restaurant|
  restaurant = Restaurant.create!(restaurant)
  puts "#{counter += 1} - Created #{restaurant.name}"
end
puts "#{counter + 1}- Done and dusted!!"

