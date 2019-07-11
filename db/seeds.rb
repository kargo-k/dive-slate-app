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

usernames = [
    "scubaDifer",
    "scoobie",
    "Dife4lyfe",
    "difingunderwater",
    "scoobadife"
]

# Creates 10 users using Faker data
10.times do
    username = "#{usernames.sample}#{(1000..9999).to_a.sample}"
    password = "0000"
    name = Faker::FunnyName.name
    certification = certifications.sample
    age = (12..60).to_a.sample
    country = Faker::Address.country
    total_dives = (1..200).to_a.sample
    User.create(
        username: username,
        password_digest: password,
        name: name,
        certification: certification,
        age: age,
        country: country,
        total_dives: total_dives
        )
end

# Seeding database with equipment information
Equipment.create(name: "booties - 3 mm")
Equipment.create(name: "wetsuit - 3 mm")
Equipment.create(name: "wetsuit - 5 mm")
Equipment.create(name: "wetsuit - 7 mm")
Equipment.create(name: "fins")
Equipment.create(name: "gloves - 2 mm")
Equipment.create(name: "hood - 2 mm")
Equipment.create(name: "rashguard - 1 mm")
Equipment.create(name: "drysuit")
Equipment.create(name: "weights - 2 kg")
Equipment.create(name: "weights - 4 kg")
Equipment.create(name: "weights - 6 kg")
Equipment.create(name: "weights - 8 kg")
Equipment.create(name: "weights - 10 kg")

# Seeding database with divesite information
Divesite.create(
    name: "East Sangat Japanese Gunboat",
    latitude: "N 11° 58' 32.000000\"",
    longitude: "E 120° 4' 40.200000\"",
    description: "Sunken WWII Japanese Gunboat"
    )
Divesite.create(
    name: "Siete Pecados Islands",
    latitude: "N 11° 59' 1.400000\"",
    longitude: "E 120° 13' 54.100000\"",
    description: "Seven small islands with steep cliffs covered in coral"
    )
Divesite.create(
    name: "Shark Wall",
    latitude: "N 11° 20' 6.400000\"",
    longitude: "E 124° 6' 33.400000\"",
    description: "Thresher shark cleaning station"
    )
Divesite.create(
    name: "Raggie Cave",
    latitude: "S 30° 15' 45.000000\"",
    longitude: "E 30° 49' 40.000000\"",
    description: "Large cave and the best spot to view big groups of ragged-tooth sharks during the winter months"
    )
Divesite.create(
    name: "Pointe Des Pecheurs",
    latitude: "N 17° 38' 7.900000\"",
    longitude: "W 148° 37' 6.800000\"",
    description: "Incredible biodiversity of the dive sites showcase the rich flora and fauna, from colourfull nudibranches to Lemon sharks"
    )
Divesite.create(
    name: "Old Kona Airport South Mooring",
    latitude: "N 19° 38' 37.200000\"",
    longitude: "W 156° 0' 56.400000\"",
    description: "Manta feeding station"
    )
Divesite.create(
    name: "Honaunau Bay/Two Step",
    latitude: "N 19° 25' 25.000000\"",
    longitude: "W 155° 54' 43.000000\"",
    description: "Hawaiian spinner dolphins feed at night then rest and take care of their young in the calm inshore waters like Honaunau Bay during daylight"
    )

# Create diveshop data using Faker gem
shops = [
    "Peter's Dive Shop",
    "Bongo Bongo Divers",
    "Silbatan Divers",
    "Big Island Diving",
    "diveUNDA"
]

shops.each do |shop|
    name = shop
    address = Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.country
    Diveshop.create(name: name, address: address)
end

Marineanimal.create(name: 'Parrot Fish', url:'https://upload.wikimedia.org/wikipedia/commons/f/f2/Scarus_frenatus_by_Ewa_Barska.jpg')
Marineanimal.create(name: 'Giant Pacific Octopus', url:'http://www.animalspot.net/wp-content/uploads/2018/02/Giant-Pacific-Octopus.jpg')
Marineanimal.create(name: 'Flamboyant Cuttlefish', url:'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Flamboyant_Cuttlefish-2.jpg/2560px-Flamboyant_Cuttlefish-2.jpg')
Marineanimal.create(name: 'Whale Shark', url:'https://www.phnompenhpost.com/sites/default/files/styles/full-screen/public/field/image/fish_1.jpg?itok=eIMY5vq-')
Marineanimal.create(name: 'Hammerhead Shark', url:'https://www.hakaimagazine.com/wp-content/uploads/aaid_header.jpg')

25.times do 
    Dive.create(
        user_id: (1..10).to_a.sample,
        diveshop_id: (1..5).to_a.sample,
        divesite_id: (1..7).to_a.sample,
        )
end