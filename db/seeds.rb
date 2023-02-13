# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 10.times do 
#     city = City.create!(
#       name: Faker::Address.city,
#       zip: Faker::Address.zip_code
#     )
#   end

# 10.times do 
#     user = User.create!(
#       first_name: Faker::Name.first_name,
#       last_name: Faker::Name.last_name,
#       description: Faker::Lorem.paragraph,
#       email: Faker::Internet.email,
#       age: rand(18..100),
#       city: City.all.sample
#     )
#   end

# funny_facts = [
#     "The first computer programmer was a woman named Ada Lovelace.",
#     "The first video game, 'Tennis for Two,' was played on an oscilloscope.",
#     "In 1999, a man tried to sue Apple for $5 million because he claimed that their mouse gave him carpal tunnel syndrome.",
#     "The first computer virus was called 'Elk Cloner' and was spread on Apple II computers in 1982.",
#     "The first text message was sent in 1992 and simply read 'Merry Christmas.'",
#     "In 1982, a Japanese company created a computer that was shaped like a cube and named it the 'Pippin.'",
#     "The first webcam was invented in 1991 to monitor a coffee pot in a computer science department at Cambridge University.",
#     "In the 1990s, a computer programmer wrote a virus that made thousands of computers play the theme from 'The Simpsons' when infected.",
#     "The first digital pet, the Tamagotchi, was released in 1996 and became a worldwide phenomenon.",
#     "In the early days of computer gaming, some people would spend hours trying to find Easter eggs, which were hidden messages or jokes left by the developers."
# ]
# title = [
# "Ada Lovelace: The Pioneer of Computer Programming",
# "Oscilloscope Tennis: The First Video Game",
# "Apple's Mouse: A Lawsuit Waiting to Happen?",
# "Elk Cloner: The First Computer Virus",
# "Merry Christmas: The First Text Message",
# "Pippin: The Cube-Shaped Computer",
# "Webcam Watch: Monitoring the Coffee Pot",
# "The Simpsons' Theme: A Virus for Your Ears",
# "Tamagotchi: The Digital Pet Craze",
# "Easter Eggs: The Hidden Treasures of Computer Gaming"
# ]
# for i in 0..9 do 
# gossip = Gossip.create!(
#     title: title[i],
#     context: funny_facts[i],
#     user_id: User.find(i+1).id
#   )
# end