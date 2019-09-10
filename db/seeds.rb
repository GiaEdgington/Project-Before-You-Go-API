# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Destination.destroy_all
Book.destroy_all

user1= User.create(username:"Abril", password:"123")

user2= User.create(username:"Maze", password:"124")

user3= User.create(username:"EdmonDantes", password:"124")

user4= User.create(username:"HariSeldon", password:"124")

destination1= Destination.create(name:"Mexico", user_id: user1.id)

destination2= Destination.create(name:"Cuba", user_id: user2.id)

destination3= Destination.create(name:"Italy", user_id: user3.id)

destination4= Destination.create(name:"Argentina", user_id: user4.id)

book1= Book.create(title:"Frida", author:"Frida", image:"https://s3-us-west-1.amazonaws.com/tprs-books/wp-content/uploads/2016/05/27155204/Frida-Kahlo.jpg", synopsis:"whatever", destination_id: destination1.id)

book2= Book.create(title:"The Maze Runner", author:"James Dashner", image:"https://upload.wikimedia.org/wikipedia/en/thumb/b/be/The_Maze_Runner_poster.jpg/220px-The_Maze_Runner_poster.jpg", synopsis:"whatever", destination_id: destination2.id)

book3= Book.create(title:"The Count of Montecristo", author:"Alexandre Dumas", image:"https://images-na.ssl-images-amazon.com/images/I/41THtzOHoEL._SX324_BO1,204,203,200_.jpg", synopsis:"whatever", destination_id: destination3.id)

book4= Book.create(title:"Foundation", author:"Isaac Asimov", image:"https://images1.penguinrandomhouse.com/cover/9780553382570", synopsis:"whatever", destination_id: destination4.id)