# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning DB...'
Pet.destroy_all

puts 'creating 30 pets'


30.times do
  Pet.create(
    name: Faker::Music.instrument,
    species: Pet::SPECIES.sample,
    address: Faker::Address.street_address,
    date: Date.today - rand(1..100)
  )
end

puts 'Finished zo/'
