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


  User.create!([
    {
      email: Faker::Internet.email,
      password: "password",
      is_shelter: true,
      state: "California",
      city: "Sacramento",
      address: "321 Naim St."
      },

    {
      email: Faker::Internet.email,
      password: "password",
      is_shelter: false,

      },

    {
      email: Faker::Internet.email,
      password: "password",
      is_shelter: false,

      },

    {
      email: Faker::Internet.email,
      password: "password",
      is_shelter: false,

      },

    {
      email: Faker::Internet.email,
      password: "password",
      is_shelter: true,
      state: "California",
      city: "Los Angeles",
      address: "123 Main St"
      },

    {
      email: Faker::Internet.email,
      password: "password",
      is_shelter: false,

      }])

puts('Created users!')

# user = User.first



    Animal.create!([{
      name: "Spot",
      user_id: User.where(is_shelter: true).first.id,
      description: "I am a dog.",
      animal_type: "dog",
      pictures: "https://images.pexels.com/photos/342214/pexels-photo-342214.jpeg?w=940&h=650&auto=compress&cs=tinysrgb",
      },


    {
      name: "Felix",
      user_id: User.where(is_shelter: true).first.id,
      description: "I am a cat.",
      animal_type: "cat",
      pictures: "https://images.pexels.com/photos/20787/pexels-photo.jpg?w=1260&h=750&auto=compress&cs=tinysrgb",
      },


    {
      name: "Max",
      user_id: User.where(is_shelter: true).first.id,
      description: "I am a dog.",
      animal_type: "dog",
      pictures: "https://images.pexels.com/photos/89775/dog-hovawart-black-pet-89775.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb",
      },


    {
      name: "Shadow",
      user_id: User.where(is_shelter: true).first.id,
      description: "I am a cat.",
      animal_type: "cat",
      pictures: "https://images.pexels.com/photos/54632/cat-animal-eyes-grey-54632.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb",
      },


    {
      name: "Reginald Barkley",
      user_id: User.where(is_shelter: true).first.id,
      description: "I am a dog.",
      animal_type: "dog",
      pictures: "https://images.pexels.com/photos/164186/pexels-photo-164186.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb",
      },


    {
      name: "Balthazar",
      user_id: User.where(is_shelter: true).first.id,
      description: "I am a dog.",
      animal_type: "dog",
      pictures: "https://images.pexels.com/photos/69372/pexels-photo-69372.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb",
      },


    {
      name: "Mittens",
      user_id: User.where(is_shelter: true).first.id,
      description: "I am a cat.",
      animal_type: "cat",
      pictures: "https://images.pexels.com/photos/36448/snake-snape-reptile.jpg?w=1260&h=750&auto=compress&cs=tinysrgb",
      }])

  # animal.user = user
  # animal.save!
puts('Created animals!')
