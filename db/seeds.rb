
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Boat.destroy_all
User.destroy_all
names_attributes = [
  {password:"123456", name: "Salena Gomez", email:'sg@sg.com'},
  {password:"123456", name: "Mark allen", email:'ma@ma.com'},
  {password:"123456", name: "Adam sandler", email:'as@as.com'},
  {password:"123456", email:'he@as.com', name: "Hessa"},
  {password:"123456", email:'hen@as.com', name: "Henry"},
  {password:"123456", email:'kev@as.com', name: "Kevin"},
  {password:"123456", email:'wan@as.com', name: "Wanlong"},
  {password:"123456", email:'shi@as.com', name: "Shinzo Abe"},
  {password:"123456", email:'Don@as.com', name: "Don Johnson"},
  {password:"123456", email:'Mic@as.com', name: "Mickey Mouse"}
]

User.create!(names_attributes)

random_user = User.all.sample.id


boats_attributes = [
  {
  name: 'yamaha A320',
  # capacity: 8,
  price: 500,
  location: "Florida",
  user_id:random_user,
  remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEWD9Drl_o-xRJU5hkMr4OJME3Xw8ZRVk7Trx-I57MnJ-89jsg"
  # name: salena gomez
  },
  {
  name: 'yamaha superjet',
  length: 2,
  # year: 2008,
  # capacity: 1,
  price: 100,
  user_id:random_user,
  location: "Florida",
  remote_photo_url: 'https://www.blowsion.com/media/catalog/product/cache/1/image/1200x/040ec09b1e35df139433887a97daa66f/b/l/blowsion_2014_yamaha_superjet_freeride_edition_for_sale.jpg'
  # name: mark allen
  },
  {
  name: 'proline walkarounds',
  length: 30,
  user_id:random_user,
  # year: 2000,
  # capacity: 10,
  price: 700,
  location: 'Florida',
  remote_photo_url: 'http://images.boats.com/resize/1/6/27/6500627_20171020071454151_1_LARGE.jpg?w=300&h=300'
  # name: adam sandler
  },
  {name: 'Falcon', price: 600, user_id:random_user, location: 'Meguro', remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLWvi5c-QcVll-fut0wXwhAyLs7kTCEHUH8ePyuzqNeuIBhQGJ"},
  {name: 'Eagle', price: 2100, user_id:random_user, location: 'Akihabara', remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj2lGJmk3AuUxnCC07CbE1lotkf5VaBPZZ_s5AJ_CAZnWMru4Ueg"},
  {name: 'Pigeon', price: 10000, user_id:random_user, location: 'Tsukihji', remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmoCt0GpHXUO5kpq4-9ypnZogkwP23hskpEsITeQoKYohuFr97"},
  {name: 'Shinzo Boat', price: 50, user_id:random_user, location: 'Okinawa', remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGsXngEcuW6ZsdtFEe-L19PrX3JyqZNSd8ikOvoMA_uv4jXTRJ7g"},
  {name: 'Sea Glider', price: 450, user_id:random_user, location: 'Florida', remote_photo_url: "http://www.militaryaerospace.com/content/dam/mae/online-articles/2013/08/Sea%20glider%2021%20Aug%202013.jpg"},
  {name: 'Catamaran', price: 600, user_id:random_user, location: 'Florida', remote_photo_url: "https://i.ytimg.com/vi/Wsc_qmnmKLw/maxresdefault.jpg"},
  {name:'Luxury Swan Boat', price:50, user_id:random_user, location: "Florida", remote_photo_url: "https://i.pinimg.com/736x/83/42/b3/8342b3afbe027e714b9c8372425fcd83--expensive-yachts-black-swan.jpg"},
  {name:'Sweet Little Duck Boat', price:1, user_id:random_user, location: "Tokyo", remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlq_OZLRqUY-hZSRDazcU6qrhYlyLW48U4M3BOFxQukI6_XS63tQ"},
  {name:'Dragon Boat', price:999, user_id:random_user, location: "Tokyo", remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLVRy5mAnTEYYQZ6sYqjzpNg9Bn-XdEtbDnDqgdvCoNPtIRN2g6g"}
]

Boat.create!(boats_attributes)

# swanboat = Boat.new({name:'Luxury Swan Boat', price:'$50', model:'Man-powered', location: "Tokyo, Japan", owner_id:1, capacity: 2})
# duckboat = Boat.new({name:'Sweet Little Duck Boat', price:'$1', model:'No-power', location: "Ueno, Tokyo, Japan", owner_id:1, capacity: 0})
# dragonBoat = Boat.new({name:'Dragon Boat', price:'$999', model:'Men-fusioned', location: "Yokohama, Japan", owner_id:2, capacity: 0})


# Price: $50.00/Hour                        Location: Okinawa
# Owner_id: Shinzo Abe

# Boat Type1: Jet Ski

# Passenger Capacity: 2-3

# Year of Boat: 1985

# Number of People: 2-3

# Engine Horsepower: 126-150

#      Price: $600.00/Day
# Owner: Mickey Mouse                                         Location: Florida

# Boat Type1: Fishing boat

# Passenger Capacity: 6-7

# Length of Boat: 22

# Year of Boat: 1985

# # Number of Cabins: 7

# # Engine Horsepower: 151-175





# Sea Glider     Price: $450.00/Day
# Owner: Don Johnson                                           Location: Florida

# Boat Type1: Power Boat

# Guest Capacity: 3-4

# Length of Boat: 22

# Year of Boat: 1974

# Engine Horsepower: 101-125

