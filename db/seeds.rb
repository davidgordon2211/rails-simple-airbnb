# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
flats_attributes = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: 'Amazing home',
    address: '1 Road',
    description: 'Stay here',
    price_per_night: 100,
    number_of_guests: 4
  },
  {
    name: 'Amazing flat',
    address: '2 Road',
    description: 'Stay here',
    price_per_night: 80,
    number_of_guests: 2
  },
  {
    name: 'Amazing bungalow',
    address: '3 Road',
    description: 'Stay here',
    price_per_night: 60,
    number_of_guests: 2
  }
]
Flat.create!(flats_attributes)
puts 'Finished!'
