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
Divesite.create(
    name: "Siete Pecados Islands",
    lattitude: "N 11° 59' 1.400000\"",
    longitude: "E 120° 13' 54.100000\"",
    description: "Seven small islands with steep cliffs covered in coral"
    )
Divesite.create(
    name: "Shark Wall",
    lattitude: "N 11° 20' 6.400000\"",
    longitude: "E 124° 6' 33.400000\"",
    description: "Thresher shark cleaning station"
    )
Divesite.create(
    name: "Raggie Cave",
    lattitude: "S 30° 15' 45.000000\"",
    longitude: "E 30° 49' 40.000000\"",
    description: "Large cave and the best spot to view big groups of ragged-tooth sharks during the winter months"
    )
Divesite.create(
    name: "Pointe Des Pecheurs",
    lattitude: "N 17° 38' 7.900000\"",
    longitude: "W 148° 37' 6.800000\"",
    description: "Incredible biodiversity of the dive sites showcase the rich flora and fauna, from colourfull nudibranches to Lemon sharks"
    )
Divesite.create(
    name: "Old Kona Airport South Mooring",
    lattitude: "N 19° 38' 37.200000\"",
    longitude: "W 156° 0' 56.400000\"",
    description: "Manta feeding station"
    )
Divesite.create(
    name: "Honaunau Bay/Two Step",
    lattitude: "N 19° 25' 25.000000\"",
    longitude: "W 155° 54' 43.000000\"",
    description: "Hawaiian spinner dolphins feed at night then rest and take care of their young in the calm inshore waters like Honaunau Bay during daylight"
    )

# Create diveshop data using Faker gem
5.times do
    name = Faker::FunnyName.name
    address = Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.country
    Diveshop.create(name: name, address: address)
end