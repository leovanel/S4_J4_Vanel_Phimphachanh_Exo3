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

10.times do |index|
  City.create(id:index+1, name:Faker::Address.city, zip_code:Faker::Address.zip_code)
end

20.times do |index|
  City.create(id:index+1, name:Faker::Address.city, zip_code:Faker::Address.zip_code)
end

10.times do |index|
  Tag.create(title:"##{Faker::Verb.base}")
end

20.times do |index|
  PrivateMessage.create(content:Faker::ChuckNorris, sender:, )
end


