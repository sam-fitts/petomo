# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Animal.destroy_all
User.destroy_all
puts('Cleaned DB up!')

6.times do
  User.create!([
    {
      email: Faker::Internet.email,
      password: "password",
      is_shelter: false,
      }])
end
puts('Created users!')

user = User.first

6.times do
  animal = Animal.new(
    {
      name: "Spot",
      description: "I am a dog.",
      animal_type: "dog",
      pictures: "https://images.pexels.com/photos/342214/pexels-photo-342214.jpeg?w=940&h=650&auto=compress&cs=tinysrgb",
      })
  animal.user = user
  animal.save!
end
puts('Created animals!')
