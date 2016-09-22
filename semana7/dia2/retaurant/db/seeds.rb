# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create(name: "Sano Sanito", address: "Chacaito")
Restaurant.create(name: "Mugaritz", address: "Espana")
Restaurant.create(name: "Alinea", address: "EEUU")
Restaurant.create(name: "Steirereck", address: "Austria")
Restaurant.create(name: "L’atelier", address: "France")
Restaurant.create(name: "Le Chateaubriand", address: "Francia")
Restaurant.create(name: "Aqua", address: "Alemania")

#customers
restaurant =Restaurant.find(1)
restaurant.customers.build(name: "Hosward", gender: 0).save
restaurant =Restaurant.find(1)
restaurant.customers.build(name: "Edkaryd", gender: 1).save
restaurant =Restaurant.find(2)
restaurant.customers.build(name: "Daniel", gender: 0).save
restaurant =Restaurant.find(2)
restaurant.customers.build(name: "Jose", gender: 0).save
restaurant =Restaurant.find(3)
restaurant.customers.build(name: "Mariana", gender: 1).save
restaurant =Restaurant.find(4)
restaurant.customers.build(name: "Yense", gender: 1).save
restaurant =Restaurant.find(5)
restaurant.customers.build(name: "Luis", gender: 0).save
restaurant =Restaurant.find(6)
restaurant.customers.build(name: "Miguel", gender: 0).save
restaurant =Restaurant.find(7)
restaurant.customers.build(name: "Bulisa", gender: 1).save
restaurant =Restaurant.find(7)
restaurant.customers.build(name: "Alejandro", gender: 0).save
restaurant =Restaurant.find(5)
restaurant.customers.build(name: "Robert", gender: 0).save
restaurant =Restaurant.find(4)
restaurant.customers.build(name: "Simon", gender: 0).save
restaurant =Restaurant.find(6)
restaurant.customers.build(name: "Bruno", gender: 0).save

#waiters
restaurant =Restaurant.find(1)
restaurant.waiters.build(name: "Ryan", gender: 0).save
restaurant =Restaurant.find(1)
restaurant.waiters.build(name: "Alissa", gender: 1).save
restaurant =Restaurant.find(2)
restaurant.waiters.build(name: "Adolfo", gender: 0).save
restaurant =Restaurant.find(2)
restaurant.waiters.build(name: "Ariana", gender: 0).save
restaurant =Restaurant.find(3)
restaurant.waiters.build(name: "Yoiner", gender: 1).save
restaurant =Restaurant.find(4)
restaurant.waiters.build(name: "Yense", gender: 1).save
restaurant =Restaurant.find(5)
restaurant.waiters.build(name: "Alberto", gender: 0).save
restaurant =Restaurant.find(6)
restaurant.waiters.build(name: "Michelle", gender: 0).save
restaurant =Restaurant.find(7)
restaurant.waiters.build(name: "fabiana", gender: 1).save
restaurant =Restaurant.find(7)
restaurant.waiters.build(name: "Mariano", gender: 0).save
restaurant =Restaurant.find(5)
restaurant.waiters.build(name: "chicho", gender: 0).save
restaurant =Restaurant.find(4)
restaurant.waiters.build(name: "chuito", gender: 0).save
restaurant =Restaurant.find(6)
restaurant.waiters.build(name: "yonwilkelson alberto", gender: 0).save

#plate
restaurant =Restaurant.find(1)
restaurant.plates.build(name: "Asopado", price: 346).save
restaurant =Restaurant.find(1)
restaurant.plates.build(name: "Pollo", price: 236).save
restaurant =Restaurant.find(2)
restaurant.plates.build(name: "Arroz con lleve", price: 4587).save
restaurant =Restaurant.find(2)
restaurant.plates.build(name: "Pasta Carbonara", price: 34).save
restaurant =Restaurant.find(3)
restaurant.plates.build(name: "Pasticho", price: 347).save
restaurant =Restaurant.find(4)
restaurant.plates.build(name: "Arepa", price: 9823).save
restaurant =Restaurant.find(5)
restaurant.plates.build(name: "Perro Caliente", price: 5497).save
restaurant =Restaurant.find(6)
restaurant.plates.build(name: "Cruzado", price: 2378).save
restaurant =Restaurant.find(7)
restaurant.plates.build(name: "Pan con Pan", price: 2365).save
restaurant =Restaurant.find(7)
restaurant.plates.build(name: "Chorizo portuano", price: 412).save
restaurant =Restaurant.find(5)
restaurant.plates.build(name: "Arroz chino", price: 4389).save
restaurant =Restaurant.find(4)
restaurant.plates.build(name: "Sushi", price: 1928).save
restaurant =Restaurant.find(6)
restaurant.plates.build(name: "Caraotas frias", price: 5245).save

#Orders
customer = Customer.find(1)
waiter= Waiter.find(1)
customer.orders.build(status: 0,waiter_id: waiter.id).save
customer = Customer.find(2)
waiter= Waiter.find(3)
customer.orders.build(status: 1,waiter_id: waiter.id).save
customer = Customer.find(5)
waiter= Waiter.find(2)
customer.orders.build(status: 0,waiter_id: waiter.id).save
customer = Customer.find(4)
waiter= Waiter.find(6)
customer.orders.build(status: 0,waiter_id: waiter.id).save
customer = Customer.find(4)
waiter= Waiter.find(6)
customer.orders.build(status: 1,waiter_id: waiter.id).save
customer = Customer.find(2)
waiter= Waiter.find(7)
customer.orders.build(status: 0,waiter_id: waiter.id).save
customer = Customer.find(7)
waiter= Waiter.find(5)
customer.orders.build(status: 1,waiter_id: waiter.id).save
#asignacion/plate_order
plate = Plate.find(1)
order = Order.find(1)
order.plates << plate
plate = Plate.find(2)
order = Order.find(4)
order.plates << plate
plate = Plate.find(2)
order = Order.find(1)
order.plates << plate
plate = Plate.find(7)
order = Order.find(5)
order.plates << plate
plate = Plate.find(3)
order = Order.find(5)
order.plates << plate
plate = Plate.find(2)
order = Order.find(5)
order.plates << plate
plate = Plate.find(3)
order = Order.find(5)
order.plates << plate
plate = Plate.find(1)
order = Order.find(2)
order.plates << plate

#category
Category.create(name: "Lujos")