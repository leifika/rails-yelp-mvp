# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CATEGORIES = ["Chinese", "Italian", "Japanese", "French", "Belgian"]
RATING =[1,2,3,4,5]


5.times do
Restaurant.create(
  name:Faker::Restaurant.name,
  address:Faker::Address.city,
  phone_number:Faker::PhoneNumber.cell_phone,
  category:CATEGORIES.sample
)
end

5.times do
Review.create(
  content:Faker::Restaurant.review
)
end
