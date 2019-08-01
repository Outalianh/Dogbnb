# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dog.destroy_all
DogSitter.destroy_all
City.destroy_all
Stroll.destroy_all

10.times do
 city = City.create(city_name: Faker::Address.city)
 dog = Dog.create(name: Faker::Creature::Dog.name, race: Faker::Creature::Dog.breed, city_id: city.id)
 dogsitter = DogSitter.create(name: Faker::Name.name, age: Faker::Number.within(range: 15..77), city_id: city.id)
 stroll = Stroll.create(dog_id: dog.id, dog_sitter_id: dogsitter.id)

end