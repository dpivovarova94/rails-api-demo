# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb
# db/seeds.rb

require 'faker'

Customer.destroy_all
Partner.destroy_all
Request.destroy_all
puts "database cleaned 🧹"

# Helper method to generate random coordinates within a specified range
def random_coordinates(min, max)
  rand * (max - min) + min
end

# Seed Customers
10.times do
  Customer.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

# Seed Partners
30.times do
  Partner.create(
    is_wood: Faker::Boolean.boolean,
    is_carpet: Faker::Boolean.boolean,
    is_tiles: Faker::Boolean.boolean,
    lat: random_coordinates(48.0, 53.0), # Adjust latitude range as needed
    lon: random_coordinates(8.0, 14.0),  # Adjust longitude range as needed
    operating_radius: rand(1000..5000),  # Adjust operating radius range as needed (in meters)
    rating: rand(1.0..5.0).round(2)      # Random rating between 1.0 and 5.0
  )
end

# Seed Requests (without matching logic)
Customer.all.each do |customer|
  30.times do
    Request.create(
      is_wood: Faker::Boolean.boolean,
      is_carpet: Faker::Boolean.boolean,
      is_tiles: Faker::Boolean.boolean,
      lat: random_coordinates(48.0, 53.0), # Adjust latitude range as needed
      lon: random_coordinates(8.0, 14.0),  # Adjust longitude range as needed
      floor_surface: rand(10.0..200.0),   # Random floor surface area (square meters)
      phone: Faker::PhoneNumber.cell_phone,
      customer_id: customer.id
    )
  end
end

puts "seeds created"
