# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "Anthony", last_name: "Hawkins", email:"nad4ne@gmail.com", password:"password", city: "san francisco", about:"I like apples", gender: 'male')

User.create(first_name: "DeMarcus", last_name: "Cousins", email:"dcousins@gmail.com", password:"password", city: "san francisco", about:"I like apples", gender: 'male')

User.create(first_name: "Jim", last_name: "Sriracha", email:"jsriracha@gmail.com", password:"password", city: "san francisco", about: "I like apples", gender: 'male')

User.create(first_name: "Halo", last_name: "Top", email:"htop@gmail.com", password:"password", city: "san francisco", about:"I like apples", gender: 'male')

User.create(first_name: "Mochi", last_name: "Balls", email:"mballs@gmail.com", password:"password", city: "san francisco", about:"I like apples", gender: 'male')

User.create(first_name: "Mickey", last_name: "Mouse", email:"mmouse@gmail.com", password:"password", city: "san francisco", about:"I like apples", gender: 'male')

User.create(first_name: "June", last_name: "July", email:"jj@gmail.com", password:"password", city: "san francisco", about:"I like apples", gender: 'male')

User.create(first_name: "August", last_name: "September", email:"monthlys@gmail.com", password:"password", city: "san francisco", about:"I like apples", gender: 'male')

User.create(first_name: "December", last_name: "Jan", email:"jdecember@gmail.com", password:"password", city: "san francisco", about:"I like apples", gender: 'female')

User.create(first_name: "Thudner", last_name: "Sally", email:"salty@gmail.com", password:"password", city: "san francisco", about:"I like apples", gender: 'male')

User.create(first_name: "Remote", last_name: "Control", email:"Rcontrol@gmail.com", password:"password", city: "san francisco", about:"I like apples", gender: 'female')

User.create(first_name: "Pillow", last_name: "Grey", email:"pgrey@gmail.com", password:"password", city: "san francisco", about:"I like apples", gender: 'male')

User.create(first_name: "Tea", last_name: "Teas", email:"teateas@gmail.com", password:"password", city: "san francisco", about:"I like apples", gender: 'male')

User.create(first_name: "Leopard", last_name: "Flats", email:"leoparddo@gmail.com", password:"password", city: "san francisco", about:"I like apples", gender: 'female')

User.create(first_name: "Bah", last_name: "Basil", email:"bababa@gmail.com", password:"password", city: "san francisco", about:"I like apples", gender: 'male')

User.create(first_name: "Broseph", last_name: "Brody", email:"hoodslam@gmail.com", password:"password", city: "san francisco", about:"I like apples", gender: 'male')

Event.create(
  user_id:2,
  title: "A Great Event",
  photo:"my pix",
  date:"4-16-98",
  ticket_link:"www.yahoo.com",
  about: "view my website yeahhhh"
)

Event.create(
  user_id:2,
  title: "A Wicked Event",
  photo:"my pix",
  date:"4-16-98",
  ticket_link:"www.yahoo.com",
  about: "view my website yeahhhh"
)


5.times do
  Event.create(
    user_id:1,
    title: "A Great Event",
    photo:"my pix",
    date:"7-16-2016",
    ticket_link:"www.google.com",
    about: "mine is bigger",
  )
end



Post.create(
  postable_id: 1,
  postable_type: 'Event',
  title: "comedy is the best",
  body: "come and have fun",
  author_id: 2
)

Post.create(
  postable_id: 1,
  postable_type: 'Event',
  title: "Tonight!!!",
  body: "see all the women of comedy",
  author_id: 1
)

Post.create(
  postable_id: 1,
  postable_type: 'User',
  title: 'Hello',
  body: 'Where you at?',
  author_id: 2
)

Post.create(
  postable_id: 2,
  postable_type: 'User',
  title: 'Hey',
  body: 'LIT',
  author_id: 1
)

Comment.create(
  post_id: 1,
  author_id: 1,
  body: "who is the best coder"
)

Comment.create(
  post_id: 1,
  author_id: 2,
  body: "to my class whats uppppp"
)

ConnectionRequest.create(
  sender_id:1,
  receiver_id: 2,
  status: true
)

ConnectionRequest.create(
  sender_id:3,
  receiver_id: 1,
  status: true
)

ConnectionRequest.create(
  sender_id: 1,
  receiver_id: 4,
  status: false
)
