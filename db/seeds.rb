# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Island.create(name: "Rovens Holme", country: "Sweden", location: "Stockholm", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 40000, month: "March")
Island.create(name: "Gaveskar", country: "Sweden", location: "Gothenburg", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 30000, month: "January")
Island.create(name: "Gran Manan Island", country: "Canada", location: "New Brunswick", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 60000, month: "June")
Island.create(name: "Bora Bora", country: "French Polynesia", location: "South Pacific Ocean", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 90000, month: "August")
Island.create(name: "Ko Tau", country: "Thailand", location: "Gulf of Thailand", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 70000, month: "November")

User.create(user_name: "anna@anna.com")
User.create(user_name: "eric@eric.com")
User.create(user_name: "bruce@bruce.com")
User.create(user_name: "fiona@fiona.com")

Review.create(rating: 5, title: "Fabulous", content: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: 3, island_id: 2)
Review.create(rating: 4, title: "Great for families", content: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: 1, island_id: 1)
Review.create(rating: 3, title: "Average", content: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: 4, island_id: 3)
Review.create(rating: 2, title: "Not value for money", content: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: 2, island_id: 4)
Review.create(rating: 1, title: "Never again", content: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: 1, island_id: 4)

Rent.create(user_id: 3, island_id: 2)
Rent.create(user_id: 1, island_id: 1)
Rent.create(user_id: 4, island_id: 3)
Rent.create(user_id: 2, island_id: 4)
Rent.create(user_id: 1, island_id: 4)
