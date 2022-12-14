require 'faker'
require 'date'
puts "Cleaning database..."
Habit.destroy_all
puts "Habits deleted"
Milestone.destroy_all
puts "Milestones deleted"
Group.destroy_all
puts "Groups deleted"
User.destroy_all
puts "Users deleted"
puts "\ncreating users..."
first_user = User.create!(email: "jones_wong@icloud.com", password: "jones_wong@icloud.com", first_name: "Jones", last_name: "Wong", age: 18 )
second_user = User.create!(email: "test@test.com", password: "test@test.com", first_name: "Steve", last_name: "tester", age: 25 )
puts "#{first_user.first_name} is created"
puts "#{second_user.first_name} is created"
# puts "Creating 4 Habits and assigin to first user..."
# Habit.create!(title: "Coding & Programming", description: Faker::Quote.yoda, start_date: Faker::Date.forward(days: 31), end_date: Faker::Date.forward(days: 31) + 78, user: first_user, master: true )
habit6 = Habit.create!(title: "Coding-Rails", description: "Building a rails application" , start_date: DateTime.parse('20150823 12: 44: 05'), end_date: DateTime.parse('20150910 12: 44: 05'), user: first_user, master: false )
habit2 = Habit.create!(title: "Meditation", description: "Meditating 3 times a week" , start_date: DateTime.parse('20150823 12: 44: 05'), end_date: DateTime.parse('20231214 12: 00: 00'), user: first_user, master: false )
habit3 = Habit.create!(title: "Lifting", description: "Gyming 4 times a week" , start_date: DateTime.parse('20221214 12: 00: 00'), end_date: DateTime.parse('20231214 12: 00: 00'), user: first_user, master: false )
habit4 = Habit.create!(title: "Writing", description: "Journalling 5 times a week" , start_date: DateTime.parse('20221214 12: 00: 00'), end_date: DateTime.parse('20231214 12: 00: 00'), user: first_user, master: false )
habit1 = Habit.create!(title: "Marathon", description: "Marathon prep (12 months)" , start_date: DateTime.parse("20211214 12: 00: 00"), end_date: DateTime.parse("20221214 12: 00: 00"), user: first_user, master: true)
# 3.times do
#   habit = Habit.new(title: Faker::Hobby.activity, description: Faker::Quote.yoda, start_date: Faker::Date.forward(days: 31), end_date: Faker::Date.forward(days: 31) + 78, user: first_user )
#   habit.save!
# end
# Milestone.new(title: "Faker::Hobby.activity", description: Faker::Quote.yoda, start_time: Faker::Date.forward(days: 2), end_time: Faker::Date.forward(days: 7) + 7.1, habit: first_habit, completed: true )
Milestone.create!(title: 'running 10k', description: 'in 2 weeks can run 10k none stop' , start_time: DateTime.parse('20221214 12: 00: 00'), end_time: DateTime.parse('20221228 12: 00: 00'), habit: habit1, completed: true)
Milestone.create!(title: 'running 15k', description: 'in 2 months can run 15k none stop' , start_time: DateTime.parse('20221228 12: 00: 00'), end_time: DateTime.parse('20220214 12: 00: 00'), habit: habit1, completed: true)
Milestone.create!(title: 'Speed work', description: 'run 5x 5k in under 25min' , start_time: DateTime.parse('20230101 09: 00: 00'), end_time: DateTime.parse('20230128 12: 00: 00'), habit: habit1, completed: true)
# puts "Creating 3 Milestones and assiging to first habit..."
# 3.times do
#   milestone = Milestone.new(title: Faker::Hobby.activity, description: Faker::Quote.yoda, start_time: Faker::Date.forward(days: 2), end_time: Faker::Date.forward(days: 7) + 7.1, habit: first_habit, completed: true )
#   milestone.save!
# end
puts "Finished!"
