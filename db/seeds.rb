# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Organization.create! name: 'NF Network', tagline: 'Leading NF Advocacy Building NF Community'
Organization.create! name: 'TwiggyStudios', tagline: 'Enter Player Two!'

Event.create! name:"Great Steps4NF Walk", event_date: "2016-11-30", event_time: "2000-01-01 21:30:00", venue_name: "Overton Park", street: "1914 Poplar Avenue", city: "Memphis", state: "TN", zip: "38104", registration_start: "2016-10-16", fee_adult: 10, fee_child: 10, fee_other: 10, goal: 7500