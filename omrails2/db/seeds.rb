# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(first_name:  "Tammy",
             last_name: "Smith",
             email: "tammyasmith@yahoo.com",
             phone: "734-915-7482")

99.times do |n|
  first_name  = Faker::Name.first_name
  last_name=Faker::Name.last_name
  email = "example-#{n+1}@railstutorial.org"
  phone=Faker::PhoneNumber.phone_number
  User.create!(first_name:  first_name,
  				last_name: last_name,
               email: email,
               phone: phone)
end

users = User.order(:created_at).take(6)
10.times do
  title = Faker::Lorem.words(3)
  date=Faker::Date.backward(14)
  users.each { |user| user.discipleship_classes.create!(title: title, class_date: date) }
end