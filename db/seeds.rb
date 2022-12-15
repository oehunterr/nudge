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
third_user = User.create!(email: "olih@gmail.com", password: "olih@gmail.com", first_name: "Oliver", last_name: "Eugene", age: 25 )
puts "#{first_user.first_name} is created"
puts "#{second_user.first_name} is created"

# puts "Creating 4 Habits and assigin to first user..."
# Habit.create!(title: "Coding & Programming", description: Faker::Quote.yoda, start_date: Faker::Date.forward(days: 31), end_date: Faker::Date.forward(days: 31) + 78, user: first_user, master: true )

habit1 = Habit.create!(title: "Marathon 🏃‍♂", description: "Marathon prep (12 months)", start_date: DateTime.parse('20220101 09: 00: 00'), end_date: DateTime.parse('20221216 09: 00: 00'), user: third_user, master: false)
habit2 = Habit.create!(title: "Meditation 🧘", description: "Meditating 3 times a week", start_date: DateTime.parse('20220101 09: 00: 00'), end_date: DateTime.parse('20221216 09: 00: 00'), user: third_user, master: false)
habit3 = Habit.create!(title: "Vocabulary building", description: "Learn 3 words a week", start_date: DateTime.parse('20221101 09: 00: 00'), end_date: DateTime.parse('20221216 09: 00: 00'), user: third_user, master: false)

habit4 = Habit.create!(title: "Journalling 🖋", description: "Journalling 5 times a week", start_date: DateTime.parse('20220101 09: 00: 00'), end_date: DateTime.parse('20221216 09: 00: 00'), user: third_user, master: false)
habit5 = Habit.create!(title: "Coding-Rails 🧑‍💻", description: "Building a rails application", start_date: DateTime.parse('20190601 12: 00: 00'), end_date: DateTime.parse('2020101 09: 00: 00'), user: third_user, master: false)

habit6 = Habit.create!(title: "Seeing family more 👨‍👩‍👧‍👦", description: "Driving to see relatives once a month", start_date: DateTime.parse('20220101 09: 00: 00'), end_date: DateTime.parse('20221216 09: 00: 00'), user: third_user, master: false)

# 3.times do
#   habit = Habit.new(title: Faker::Hobby.activity, description: Faker::Quote.yoda, start_date: Faker::Date.forward(days: 31), end_date: Faker::Date.forward(days: 31) + 78, user: first_user )
#   habit.save!
# end
# Milestone.new(title: "Faker::Hobby.activity", description: Faker::Quote.yoda, start_time: Faker::Date.forward(days: 2), end_time: Faker::Date.forward(days: 7) + 7.1, habit: first_habit, completed: true )
Milestone.create!(title: 'Running 10k', description: '10k - 2 weeks', start_time: DateTime.parse('20220101 09: 00: 00'), end_time: DateTime.parse('20220401 09: 00: 00'), habit: habit1, completed: true)
Milestone.create!(title: 'Running 15k', description: '15k - 2 months', start_time: DateTime.parse('20220401 09: 00: 00'), end_time: DateTime.parse('20220601 09: 00: 00'), habit: habit1, completed: true)
Milestone.create!(title: 'Speed work', description: 'run 5 x 5k (25min pace)', start_time: DateTime.parse('20220601 09: 00: 00'), end_time: DateTime.parse('20220801 09: 00: 00'), habit: habit1, completed: true)
Milestone.create!(title: 'The Big One', description: 'The big one in a year', start_time: DateTime.parse('20220801 09: 00: 00'), end_time: DateTime.parse('20221216 09: 00: 00'), habit: habit1, completed: true)

Milestone.create!(title: '5 min', description: 'Meditate for 5 mins one evening', start_time: DateTime.parse('20220101 09: 00: 00'), end_time: DateTime.parse('20220107 09: 00: 00'), habit: habit2, completed: false)

Milestone.create!(title: 'Learn 3 words this week', description: '', start_time: DateTime.parse('20221101 09: 00: 00'), end_time: DateTime.parse('20220107 09: 00: 00'), habit: habit3, completed: true)
Milestone.create!(title: 'Learn 3 words this week', description: '', start_time: DateTime.parse('20221108 09: 00: 00'), end_time: DateTime.parse('20220114 09: 00: 00'), habit: habit3, completed: true)
Milestone.create!(title: 'Learn 3 words this week', description: '', start_time: DateTime.parse('20221115 09: 00: 00'), end_time: DateTime.parse('20220121 09: 00: 00'), habit: habit3, completed: true)

# puts "Creating 3 Milestones and assiging to first habit..."
# 3.times do
#   milestone = Milestone.new(title: Faker::Hobby.activity, description: Faker::Quote.yoda, start_time: Faker::Date.forward(days: 2), end_time: Faker::Date.forward(days: 7) + 7.1, habit: first_habit, completed: true )
#   milestone.save!
# end
puts "Finished!"
