puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "149 Carrer de Bruc", category: "Chinese" }
pizza_east = { name: "Pizza East", address: "510 Carred de Sicilia", category: "Italian" }
red_ant = { name: "Red Ant", address: "12 Carrer Trafalgar", category: "Japanese" }
garage =  { name: "Garage", address: "534 Carrer Mallorca", category: "French" }
little_italy = { name: "Little Italy", address: "1 Plaza Tetuan ", category: "Italian" }

[dishoom, pizza_east, red_ant, garage, little_italy].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
