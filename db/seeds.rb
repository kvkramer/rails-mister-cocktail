# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Cocktail.destroy_all
Ingredient.destroy_all

puts "Creating cocktail ingredients..."
# dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5 }
# pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4 }

# [ dishoom, pizza_east ].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "sugar")
Ingredient.create(name: "Rum")
Ingredient.create(name: "Aperol")
Ingredient.create(name: "Wine")
Ingredient.create(name: "Water")
Ingredient.create(name: "Stawberry")
Ingredient.create(name: "Gin")
Ingredient.create(name: "Ginger Ale")
Ingredient.create(name: "Tonic")
# end
puts "Finished!"
