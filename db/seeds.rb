require 'faker'
require 'date'
puts "Cleaning database..."
Group.destroy_all
puts "Groups deleted"
Habit.destroy_all
puts "Habits deleted"
Milestone.destroy_all
puts "Milestones deleted"
Notification.destroy_all
puts "Notifications deleted"
User.destroy_all
puts "Users deleted"
puts "\ncreating users..."
first_user = User.create!(email: "jones_wong@icloud.com", password: "jones_wong@icloud.com", first_name: "Jones", last_name: "Wong", age: 18 )
second_user = User.create!(email: "test@test.com", password: "test@test.com", first_name: "Steve", last_name: "tester", age: 25 )
third_user = User.create!(email: "olih@gmail.com", password: "olih@gmail.com", first_name: "Oliver", last_name: "Eugene", age: 25 )
puts "#{first_user.first_name} is created"
puts "#{second_user.first_name} is created"
puts "#{third_user.first_name} is created"
Notification.create!(user: third_user, answer: "200", read: true)
# puts "Creating 4 Habits and assigin to first user..."
# first_habit = Habit.create!(title: "Coding & Programming", description: Faker::Quote.yoda, start_date: Date.today + rand(1..10).day, end_date: Date.tomorrow + 78.hour, user: first_user, master: true )

habit1 = Habit.create!(title: "Marathon 🏃‍♂", description: "Marathon prep (12 months)", start_date: Date.today - 6.month, end_date: Date.today, user: third_user, master: true)

habit3 = Habit.create!(title: "Vocabulary building 📘", description: "Learn 3 words a week", start_date: Date.today - 5.month, end_date: Date.today + rand(1..100).day, user: third_user, master: false)

habit5 = Habit.create!(title: "Coding-Rails 🧑‍💻", description: "Building a rails application", start_date: Date.today - 4.month, end_date: Date.today + rand(1..100).day, user: third_user, master: false)
habit6 = Habit.create!(title: "Seeing family more 👨‍👩‍👧‍👦", description: "Driving to see relatives once a month", start_date: Date.today - 6.month, end_date: Date.today + rand(1..100).day, user: third_user, master: false)
# 3.times do
#   habit = Habit.new(title: Faker::Hobby.activity, description: Faker::Quote.yoda, start_date: Date.today + rand(1..10).day, end_date: Date.tomorrow + 78.hour, user: first_user )
#   habit.save!
# end
# Milestone.new(title: "Faker::Hobby.activity", description: Faker::Quote.yoda, start_time: Faker::Date.forward(days: 2), end_time: Faker::Date.forward(days: 7) + 7.1, habit: first_habit, completed: true )

Milestone.create!(title: 'Running 10k', description: '10k - 2 weeks', start_time: Date.today - 150.day, end_time: Date.today - 148.day, habit: habit1, completed: true)
Milestone.create!(title: 'Running 15k', description: '15k - 2 months', start_time: Date.today - 130.day, end_time: Date.today - 127.day, habit: habit1, completed: true)
Milestone.create!(title: 'Speed work', description: 'run 5 x 5k (25min pace)', start_time: Date.today - 50.day, end_time: Date.today - 46.day, habit: habit1, completed: true)
Milestone.create!(title: 'THE marathon', description: 'The big one in a year', start_time: Date.today - 1.day, end_time: Date.today, habit: habit1, completed: true)
Milestone.create!(title: 'Words', description: 'Learning 3 words a week', start_time: Date.today - 20.day, end_time: Date.today - 16.day, habit: habit3, completed: true)
# puts "Creating 3 Milestones and assiging to first habit..."
# 3.times do
#   milestone = Milestone.new(title: Faker::Hobby.activity, description: Faker::Quote.yoda, start_time: Date.today + rand(1..10).day, end_time: Date.tomorrow + 78.hour, habit: first_habit, completed: true )
#   milestone.save!
# end
puts "Finished!"
