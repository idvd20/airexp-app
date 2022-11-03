# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Experience.create!([
    {
      title: 'Pastas with the Grandmas',
      location: 'Italy',
      price: 1922.0,
      starts_at: 30.days.from_now,
      description: %{
        Need to travel to Italy? Nonna will bring it to your table!Cook Pasta from scratch with grandma, let her share with you her culinary secrets and the traditional authentic pasta technique. Listen to her stories and be ready to be involved in our community.Nonna Nerina and the other grandmas of our village can't wait to meet all of you!
      }.squish,
      image_file_name: 'grandma.png'
    },
    {
      title: 'The Circus Factory',
      location: 'Portugal',
      price: 1456.00,
      starts_at: 45.days.from_now,
      description: %{
        During this one hour experience, join our crazy circus master who will share with you his story and passion for circus.Don't miss your chance! This experience is full of beauty, super interactive and every participant will be invited to join our fun games, quiz and share laughs together.
      }.squish,
      image_file_name: 'circus.png'
    },
    {
      title: 'No Spain no Game',
      location: 'Spain',
      price: 932.00,
      starts_at: 65.days.from_now,
      description: %{
        We designed this experience for you, to bring lots of HAPPINESS and laughs, and connect to each other ! Be immersed in Barcelona & Spain in a very fun way and learn secrets from a NatGeo winner.
      }.squish,
      image_file_name: 'spain.png'
    },
    {
      title: "Murder Mystery",
      location: 'Poland',
      price: 915.00,
      starts_at: 10.days.from_now,
      description: %{
        There was a murder! Oh no! And only You as a group of detectives are able to solve it... Will you make it?
      }.squish,
      image_file_name: 'murder.png'
    },
    {
      title: 'New Habits, new life',
      location: 'Reston, VA',
      price: 0.00,
      starts_at: 2.days.from_now,
      description: %{
        How your life would be like in 5 years if you continue with your current habits? Would you like to improve them?
      }.squish
    },
    {
      title: "Harry Potter's Virtual Tour",
      location: 'London',
      price: 0.00,
      starts_at: 5.days.from_now,
      description: %{
        Ever wondered how they made Hagrid look so tall? Why the film-makers chose THAT bridge to destroy? Or where to find the REAL entrance to Platform 9 3/4?.
      }.squish,
      image_file_name: 'harry.png'
    },
    {
      title: 'Joy to the Team',
      location: 'Japan',
      price: 15.00,
      starts_at: 10.days.from_now,
      description: %{
        This interactive online magic show was created for those who want to spend fun and have a great time with their remote teammates, family, and friends.
      }.squish,
      image_file_name: 'joy.png'
    },
    {
      title: 'Rails Coding Challenge',
      location: 'Japan',
      price: 0.0,
      starts_at: 10.days.from_now,
      description: %{
        Create a ruby on rails 7 app.
      }.squish,
      image_file_name: 'rails.png'
    }
  ])