# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Creating fakes restaurants...'

5.times do
  new_restaurant = Restaurant.new(
   name: Faker::Restaurant.name,
   address: Faker::Book.author,
   category: Restaurant::CATEGORY.sample,
  )
  new_restaurant.save!
end

puts" #{Restaurant.count}Finished"
