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
JoinTagGossip.destroy_all

puts 'everything destroyed'

10.times do |index|
  User.create(id:index+1, first_name:Faker::Name.first_name,last_name:Faker::Name.last_name, description:Faker::Lorem.sentence(word_count: 3), email:Faker::Internet.email, age:rand(1..99),city_id: rand(1..10))
end
puts 'user created'
10.times do |index|
  City.create(id:index+1, name:Faker::Address.city, zip_code:Faker::Address.zip_code)
end
puts 'city created'
20.times do |index|
  Gossip.create(id:index+1, title:Faker::Lorem.word,
   content:Faker::Lorem.sentence(word_count: 5), user_id: rand(1..10))
end
puts 'gossip created'
10.times do |index|
  Tag.create(title:"##{Faker::Verb.base}")
end
puts 'tag created'

5.times do |index|
  PrivateMessage.create(content:Faker::Lorem.sentence(word_count: 10),sender_id:rand(1..10),
  recipient_id:rand(1..10) )
end
puts 'pm created'

10.times do |index|
  JoinTagGossip.create(id:index+1, gossip_id:rand(1..20), tag_id:rand(1..10))
end

puts 'jtg created'
