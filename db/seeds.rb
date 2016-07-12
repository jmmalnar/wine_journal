# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(
    firstname: 'Example',
    lastname: 'User',
    email: 'example@user.com',
    password: 'password',
    password_confirmation: 'password',
    admin: true)

99.times do |n|
  firstname = Faker::Name.first_name
  lastname = Faker::Name.last_name
  email = "example-#{n+1}@user.com"
  password = 'password'
  User.create!(
      firstname: firstname,
      lastname: lastname,
      email: email,
      password: password,
      password_confirmation: password)
end