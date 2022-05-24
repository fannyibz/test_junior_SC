puts "> Deleting all records..."
CallTransaction.destroy_all
Goal.destroy_all
Client.destroy_all
User.destroy_all

puts ">>>> Creating users..."
ringo = User.create(first_name: 'Vincent', last_name: 'Dumont', email: "ringo@mail.com", password: '123456')
john = User.create(first_name: 'John', last_name: 'Do', email: "john@mail.com", password: '123456')
puts "#{User.count} user(s) created"

puts ">>>> Creating goals..."
goal_1 = Goal.create(user: john, start_date: Date.today.beginning_of_month, end_date: Date.today.end_of_month, amount: 50, active: true)
goal_2 = Goal.create(user: ringo, start_date: Date.today.beginning_of_month, end_date: Date.today.end_of_month, amount: 150)
goal_3 = Goal.create(user: john, start_date: Date.today.beginning_of_month.next_month, end_date: Date.today.end_of_month, amount: 100)
puts "#{Goal.count} goal(s) created"

puts ">>>> Creating client..."
Rake::Task['download_client:import'].invoke
puts "#{Client.count} client(s) created"

puts ">>>> Creating call transaction..."
call_1 = CallTransaction.create(user: john, goal: goal_1, client: Client.first, revenue: Client.first.revenue)
call_2 = CallTransaction.create(user: john, goal: goal_1, client: Client.last, revenue: Client.last.revenue)
puts "#{Client.count} client(s) created"

puts ">>>> Updating clients status.."
Client.first.done!
Client.last.done!
puts ">>>>>> end"



