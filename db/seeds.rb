# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Wine.delete_all

User.create!(
    firstname: 'Jason',
    lastname: 'Malnar',
    email: 'jmmalnar@utexas.edu',
    password: 'password',
    password_confirmation: 'password',
    admin: true,
    activated: true,
    activated_at: Time.zone.now
)

User.create!(
    firstname: 'Example',
    lastname: 'User',
    email: 'example@user.com',
    password: 'password',
    password_confirmation: 'password',
    admin: true,
    activated: true,
    activated_at: Time.zone.now
)

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
      password_confirmation: password,
      activated: true,
      activated_at: Time.zone.now
  )
end

# Wines
50.times do |n|
  name = Faker::Company.name
  year = Faker::Number.between(2005, 2016)
  grape = ['merlot', 'cabernet sauvignon', 'malbec'].sample
  country = Faker::Address.country
  abv = Faker::Number.decimal(1)
  Wine.create!(
      name: "#{name} Wine",
      vintage: year,
      grapes: grape,
      color: 'red',
      country: country,
      region: 'Somewhere Here',
      abv: abv,
      vineyard: name
  )
end

50.times do |n|
  name = Faker::Company.name
  year = Faker::Number.between(2005, 2016)
  grape = ['pinot grigio', 'chardonnay', 'riesling'].sample
  country = Faker::Address.country
  abv = Faker::Number.decimal(1)
  Wine.create!(
      name: "#{name} Wine",
      vintage: year,
      grapes: grape,
      color: 'white',
      country: country,
      region: 'Somewhere Here',
      abv: abv,
      vineyard: name
  )
end