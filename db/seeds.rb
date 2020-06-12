# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Message.destroy_all
Channel.destroy_all
User.destroy_all

puts 'User creating'
User.create(email:'test1@gmail.com', password: 123456)
User.create(email:'test2@gmail.com', password: 123456)
puts 'Done'

puts 'Channel creating'

Channel.create!(name: 'general')
Channel.create!(name: 'React')
Channel.create!(name: 'Rails')

puts 'Done'

puts 'Message creating'
Message.create!(user: User.first, channel: Channel.first, content: 'test1')
Message.create!(user: User.last, channel: Channel.first, content: 'test2')
puts 'Done'
