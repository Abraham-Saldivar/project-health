# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding 🥸"
puts "Seeding 🥸🥸"
puts "Seeding 🥸🥸🥸"


users = User.create([
  {
    f_name: "John",
    l_name: "Smith",
    password_digest: "123456",
    email: "john@example.com",
    username: "j1234",
  },
  {
    f_name: "Marge",
    l_name: "Smith",
    password_digest: "1234567",
    email: "marge@example.com",
    username: "m1234",
  },
]);

mposts = MPost.create([
  {
    name: "MedixineTe",
    nickname: "my_med",
    dose: 10,
    frequency: DateTime.now,
    user: users.first,
  },
  {
    name: "Medixine",
    nickname: "my_medOne",
    dose: 200,
    frequency: DateTime.now,
    user: users.first 
  },
]);

puts "Done 😊"
