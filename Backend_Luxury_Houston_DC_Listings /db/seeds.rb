# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Seller.destroy_all
Agent.destroy_all
Property.destroy_all
Review.destroy_all

10.times do
    Seller.create(name: Faker::Name.name, telephone: Faker::PhoneNumber.cell_phone, email_address: Faker::Internet.email, occupation: Faker::Job.title)
end 

10.times do
    Agent.create(name: Faker::Name.name, telephone: Faker::PhoneNumber.cell_phone, work_address: Faker::Address.full_address,  email_address: Faker::Internet.email, years_of_experience: Faker::Number.decimal_part(digits: 2))
end 

10.times do
    Property.create(address: Faker::Address.full_address, description: Faker::Lorem.paragraph, number_of_beds: Faker::Number.decimal_part(digits: 2), number_of_baths: Faker::Number.decimal_part(digits: 2), size: Faker::Number.decimal_part(digits: 4), price: Faker::Number.decimal_part(digits: 2), agent: Agent.all.sample, seller: Seller.all.sample)
end 

10.times do
    Review.create(comment: Faker::Lorem.paragraph, rating: Faker::Number.decimal_part(digits: 1), agent: Agent.all.sample)
end 