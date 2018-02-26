# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Boat.create!({name:'Luxury Swan Boat', price:'$50', model:'Man-powered', location: "Tokyo, Japan", owner_id:1, capacity: 2})
Boat.create!({name:'Sweet Little Duck Boat', price:'$1', model:'No-power', location: "Tokyo, Japan", owner_id:1, capacity: 0})
Boat.create!({name:'Sweet Little Duck Boat', price:'$1', model:'No-power', location: "Tokyo, Japan", owner_id:1, capacity: 0})
