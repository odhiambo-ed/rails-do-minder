# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# # Clear existing data
# puts "Clearing existing data..."
# User.destroy_all
# Category.destroy_all
# Task.destroy_all

# # Create Users
# puts "Creating users..."
# users = [
#   { email: 'john@example.com', password: 'password123', password_confirmation: 'password123' },
#   { email: 'jane@example.com', password: 'password123', password_confirmation: 'password123' },
#   { email: 'bob@example.com', password: 'password123', password_confirmation: 'password123' },
#   { email: 'alice@example.com', password: 'password123', password_confirmation: 'password123' },
#   { email: 'charlie@example.com', password: 'password123', password_confirmation: 'password123' }
# ]

# created_users = users.map { |user_data| User.create!(user_data) }

# # Create Categories
# puts "Creating categories..."
# categories = [
#   'Work',
#   'Personal',
#   'Health',
#   'Finance',
#   'Education'
# ]

# created_categories = categories.map.with_index do |category_name, index|
#   created_users[index].categories.create!(name: category_name)
# end

# # Create Tasks
# puts "Creating tasks..."
# tasks = [
#   { title: 'Complete project proposal', description: 'Draft and submit the Q4 project proposal', due_date: 1.week.from_now, completed: false },
#   { title: 'Go grocery shopping', description: 'Buy fruits, vegetables, and milk', due_date: 2.days.from_now, completed: true },
#   { title: 'Schedule dentist appointment', description: 'Call Dr. Smith for a check-up', due_date: 2.weeks.from_now, completed: false },
#   { title: 'Pay credit card bill', description: 'Pay the monthly credit card statement', due_date: 5.days.from_now, completed: false },
#   { title: 'Study for exam', description: 'Review chapters 5-8 for upcoming test', due_date: 3.days.from_now, completed: false }
# ]

# tasks.each_with_index do |task_data, index|
#   task = Task.new(task_data)
#   task.user = created_users[index]
#   task.category = created_categories[index]
#   task.save!
# end

# puts "Seed data created successfully!"
