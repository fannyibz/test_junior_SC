# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "> Deleting all records..."
User.destroy_all
Goal.destroy_all

puts ">>>> Creating users..."
ringo = User.create(first_name: 'Vincent', last_name: 'Dumont', email: "ringo@mail.com", password: '123456')
john = User.create(first_name: 'John', last_name: 'Do', email: "john@mail.com", password: '123456')
puts "#{User.count} user(s) created"

puts ">>>> Creating goals..."
goal_1 = Goal.create(user: ringo, start_date: Date.today.beginning_of_month, end_date: Date.today.end_of_month, amount: 600)
puts "#{Goal.count} goal(s) created"