# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
City.destroy_all
Gossip.destroy_all
PrivateMessage.destroy_all
Tag.destroy_all

10.times do |index|
  User.create(id:index+1, first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, description: , email:Faker::Internet.email, age:rand(1..99))
end

