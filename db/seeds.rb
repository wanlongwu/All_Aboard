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

boats_attributes = [
  {
  name: 'yamaha A320',
  # capacity: 8,
  price: 500,
  location: "miami",
  user_id:1,
  # name: salena gomez
  },
  {
  name: 'yamaha superjet',
  length: 2,
  # year: 2008,
  # capacity: 1,
  price: 100,
  user_id:2,
  location: "palm beach"
  # name: mark allen
  },
  {
  name: 'proline walkarounds',
  length: 30,
  user_id:3,
  # year: 2000,
  # capacity: 10,
  price: 700,
  location: 'slidell LA'
  # name: adam sandler
  },
  {name: 'Falcon', price: 600, user_id: 1, location: 'Meguro'},
  {name: 'Eagle', price: 2100, user_id: 2, location: 'Akihabara'},
  {name: 'Pigeon', price: 10000, user_id: 3, location: 'Tsukihji'},
  {name: 'Shinzo Boat', price: 50, user_id: 4, location: 'Okinawa'},
  {name: 'Sea Glider', price: 450, user_id: 5, location: 'Florida'},
  {name: 'Catamaran', price: 600, user_id: 6, location: 'Florida'},
  {name:'Luxury Swan Boat', price:50, user_id: 7, location: "Tokyo, Japan"},
  {name:'Sweet Little Duck Boat', price:1, user_id: 8, location: "Ueno, Tokyo, Japan"},
  {name:'Dragon Boat', price:999, user_id: 9, location: "Yokohama, Japan"}
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

