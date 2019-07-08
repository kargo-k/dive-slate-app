# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

certifications = [
    "OPEN WATER",
    "ADVANCED OPEN WATER",
    "NITROX",
    "RESCUE",
    "DIVE MASTER",
    "DIVE INSTRUCTOR"
]

# Creates 10 users using Faker data
10.times do
    username = Faker::Name.unique.first_name.downcase
    password = "0000"
    name = username.titleize + " " + Faker::Name.last_name
    certification = certifications.sample
    age = (12..60).to_a.sample
    country = Faker::Address.country
    total_dives = (1..200).to_a.sample
    User.create(
        username: username, 
        password: password, 
        name: name, 
        certification: certification, 
        age: age, 
        country: country, 
        total_dives: total_dives
        )
end

# Seeding database with equipment information
Equipment.create(name: "booties", specs: "3 mm")
Equipment.create(name: "wetsuit", specs: "3 mm")
Equipment.create(name: "wetsuit", specs: "5 mm")
Equipment.create(name: "wetsuit", specs: "7 mm")
Equipment.create(name: "fins", specs: "")
Equipment.create(name: "gloves", specs: "2 mm")
Equipment.create(name: "hood", specs: "2 mm")
Equipment.create(name: "rashguard", specs: "1 mm")
Equipment.create(name: "drysuit", specs: "")
Equipment.create(name: "weights", specs: "2 kg")
Equipment.create(name: "weights", specs: "4 kg")
Equipment.create(name: "weights", specs: "6 kg")
Equipment.create(name: "weights", specs: "8 kg")
Equipment.create(name: "weights", specs: "10 kg")

# Seeding database with divesite information
Divesite.create(
    name: "East Sangat Japanese Gunboat",
    lattitude: "N 11° 58' 32.000000\"",
    longitude: "E 120° 4' 40.200000\"",
    description: "Sunken WWII Japanese Gunboat"
    )
# Divesite.create(
#     name: "",
#     lattitude: "\"",
#     longitude: "\"",
#     description: ""
#     )