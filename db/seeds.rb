# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Creating restaurants..."
creperie = {name: "Cassonade", address: "Ile de Batz", phone_number: "0550505005", category: "belgian"}
meat = {name: "Meat restaurant", address: "Vevey", phone_number: "05548421545", category: "french"}
pizza = {name: "Pizza", address: "Roma", phone_number: "05545845005", category: "italian"}
sushi = {name: "sushi", address: "Tokyo", phone_number: "4845454544", category: "japanese"}
chinese = {name: "Sichuan", address: "Shanghai", phone_number: "0550405005", category: "chinese"}


[creperie, meat, pizza, sushi, chinese].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
