# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

name
price / hour
owner
boat type
capacity
year :1954
power :130-150
location

boat.create(name: 'Falcon', price: 600, owner: 'Henry', capacity: 3, year: 1954, power: 130, location: 'Meguro')

boat.create(name: 'Eagle', price: 2100, owner: 'Wan', capacity: 4, year: 2000, power: 50, location: 'Akihabara')

boat.create(name: 'Pigeon', price: 10000, owner: 'Hessa', capacity: 3, year: 2018, power: 3000, location: 'Tsukihji')

