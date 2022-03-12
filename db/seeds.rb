# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

abc = User.create(email:'admin@gmail.com', password: 'admin')
puts "User #{abc.email} created"

toilet1 = Toilet.create(address: "1 rue Socrate, Casablanca", description: "dummy toilets 1", user_id: abc.id) #toilets_option: true, shower_option: true, baby_changing_table_option: false
puts "Toilets #{toilet1.description} created"
toilet2 = Toilet.create(address: '1 Boulevard Brahim Roudani, Casablanca', description:'dummy toilets 2', toilets_option: true, shower_option: true, baby_changing_table_option: false, user_id: abc.id)
puts "Toilets #{toilet2.description} created"
