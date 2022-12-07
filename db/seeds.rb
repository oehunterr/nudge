# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require "open-uri"
require 'faker'
require 'date'

puts "Cleaning database..."
Habit.destroy_all
puts "Habits deleted"
Milestone.destroy_all
puts "Milestones deleted"
User.destroy_all
puts "Users deleted"

puts "\ncreating users..."
first_user = User.create!(email: "jones_wong@icloud.com", password: "jones_wong@icloud.com", first_name: "Jones", last_name: "Wong", age: 18)
second_user = User.create!(email: "test@test.com", password: "test@test.com", first_name: "Steve", last_name: "tester", age: 25)
puts "#{first_user.first_name} is created"
puts "#{second_user.first_name} is created"

puts "Creating 6 Habits and assigin to first user..."

first_habit = Habit.create!(title: Faker::Lorem.sentence, description: Faker::Quote.yoda, start_date: Faker::Date.forward(days: 31), end_date: Faker::Date.forward(days: 31) + 78, user: first_user)

5.times do
  habit = Habit.new(title: Faker::Lorem.sentence, description: Faker::Quote.yoda, start_date: Faker::Date.forward(days: 31), end_date: Faker::Date.forward(days: 31) + 78, user: first_user)
  habit.save!
end


puts "Creating 5 Milestones and assiging to first habit..."
5.times do
  milestone = Milestone.new(title: Faker::Lorem.sentence, description: Faker::Quote.yoda, start_time: Faker::Date.forward(days: 31), end_time: Faker::Date.forward(days: 31) + 7.1, habit: first_habit)
  milestone.save!
end


puts "Finished!"
