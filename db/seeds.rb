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
Equipment.create(name: "booties")
Equipment.create(name: "wetsuit")
Equipment.create(name: "gloves")
Equipment.create(name: "hood")
Equipment.create(name: "rashguard")
Equipment.create(name: "drysuit")
Equipment.create(name: "vest")
Equipment.create(name: "weights")

# Seeding database with divesite information
Divesite.create(
    name: "East Sangat Japanese Gunboat",
    latitude: "11.97556",
    longitude: "120.0722",
    description: "Sunken WWII Japanese Gunboat"
    )
Divesite.create(
    name: "Siete Pecados Islands",
    latitude: "11.98372",
    longitude: "120.2317",
    description: "Seven small islands with steep cliffs covered in coral"
    )
Divesite.create(
    name: "Shark Wall",
    latitude: "11.33511°",
    longitude: "124.1093",
    description: "Thresher shark cleaning station"
    )
Divesite.create(
    name: "Raggie Cave",
    latitude: "-30.2625",
    longitude: "30.82778",
    description: "Large cave and the best spot to view big groups of ragged-tooth sharks during the winter months"
    )
Divesite.create(
    name: "Pointe Des Pecheurs",
    latitude: "17.63553",
    longitude: "-148.6186",
    description: "Incredible biodiversity of the dive sites showcase the rich flora and fauna, from colourfull nudibranches to Lemon sharks"
    )
Divesite.create(
    name: "Old Kona Airport South Mooring",
    latitude: "19.64367",
    longitude: "-156.0157",
    description: "Manta feeding station"
    )
Divesite.create(
    name: "Honaunau Bay/Two Step",
    latitude: "19.42361",
    longitude: "-155.9119",
    description: "Hawaiian spinner dolphins feed at night then rest and take care of their young in the calm inshore waters like Honaunau Bay during daylight"
    )

Divesite.create(
    name: "SourceCape Kri - Raja Ampat, Indonesia",
    latitude: "130.505218",
    longitude: "-1.0320468",
    description: "One of the best spots for seeing a large variety of fish and other marine life."
    )

  Divesite.create(
    name: "The Great Blue Hole",
    latitude: "17.3160476",
    longitude: "-87.5351438",
    description: "The biggest marine sinkhole off of the coast of Belize."
    )

# Create diveshop data using Faker gem
shops = [
    "Peter's Dive Shop",
    "Bongo Bongo Divers",
    "Silbatan Divers",
    "Big Island Diving",
    "diveUNDA",
    "Underwater Sports",
    "Scuba Club Cozumel"
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
        diveshop_id: (1..7).to_a.sample,
        divesite_id: (1..9).to_a.sample,
        )
end
