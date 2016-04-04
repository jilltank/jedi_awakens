# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

25.times do
	Planet.create(name: Faker::StarWars.planet)
end

50.times do
	Species.create(name: Faker::StarWars::specie, planet_id: rand(1..25))
end

200.times do
	Character.create(name: Faker::StarWars::character, species_id: rand(1..50))
end

75.times do
	Droid.create(name: Faker::StarWars::droid, character_id: rand(1..200))
end

100.times do
	Vehicle.create(name: Faker::StarWars::vehicle, character_id: rand(1..200))
end

250.times do
	Quote.create(saying: Faker::StarWars::quote)
end