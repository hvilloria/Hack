# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



c=Contact.new(name: "Hosward", lastname: "Villoria",phone: "04242774968", 
							 email: "hosward.avc@gmail.com", birthdate:"02/03/1992", gender: 1,
							 profile_picture: "url")
c.save