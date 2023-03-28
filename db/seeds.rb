# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Seeding farmers..."
farmer1 = Farmer.create(name: "Mike",image: "https://rb.gy/z7v0fd", email: "mikeorchrd@gmail.com", phonenumber: "0743333333", location: "Kiambu")
farmer2 = Farmer.create(name: "Jane",image: "https://rb.gy/11x6qh", email: "janeorchrd@gmail.com", phonenumber: "0733567845", location: "Nyeri")
farmer3 = Farmer.create(name: "Mercy",image: "https://rb.gy/yfc7e1", email: "mercyorchrd@gmail.com", phonenumber: "0724567432", location: "Kisii")
farmer4 = Farmer.create(name: "Jayden",image: "https://rb.gy/fpkkh5", email: "jaydenorchrd@gmail.com", phonenumber: "0722510897", location: "Machakos")

puts "Seeding clients..."
client1 = Client.create(name: "Richard",image: "https://rb.gy/ypsna8", email: "richardkay@gmail.com", phonenumber: "0743564322", location: "Mombasa")
client2 = Client.create(name: "Sara",image: "https://rb.gy/btzexq", email: "sarasam@gmail.com", phonenumber: "0715342859", location: "Mombasa")
client3 = Client.create(name: "Lucy",image: "https://rb.gy/vybua6", email: "lucybest@gmail.com", phonenumber: "0712743726", location: "Mombasa")
client4 = Client.create(name: "Olivia",image: "https://rb.gy/1vywhg", email: "oliviamark@gmail.com", phonenumber: "0720912831", location: "Mombasa")

puts "Seeding fruits..."
fruit1 = Fruit.create(name: "Water melon",image: "https://rb.gy/5oofc3", price: 'Ksh 150 per kg',availability: "Instock", farmer_id: 1, client_id: 3)
fruit1 = Fruit.create(name: "Oranges",image: "https://rb.gy/tegfry", price: 'Ksh 160 per kg',availability: "Instock", farmer_id: 1, client_id: 3)
fruit1 = Fruit.create(name: "Pineapples",image: "https://rb.gy/fznhjq", price: 'Ksh 180 per kg',availability: "Instock", farmer_id: 1, client_id: 3)
fruit1 = Fruit.create(name: "Mangoes",image: "https://rb.gy/j0vmel", price: 'Ksh 120 per kg',availability: "Instock", farmer_id: 1, client_id: 3)


puts "Done seeding!"