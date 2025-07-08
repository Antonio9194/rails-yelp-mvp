# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
restaurants = [
  { name: "Sushi Zen", address: "Tokyo", phone_number: "08012345678", category: "japanese" },
  { name: "Pasta Palace", address: "Rome", phone_number: "0634567890", category: "italian" },
  { name: "Le Baguette", address: "Paris", phone_number: "0145789632", category: "french" },
  { name: "Dragon Delight", address: "Beijing", phone_number: "0109876543", category: "chinese" },
  { name: "Waffle World", address: "Brussels", phone_number: "0223456789", category: "belgian" }
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end