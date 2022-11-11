# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Movie.destroy_all

puts "Creating 100 movies"

100.times do
  movie = Movie.new(title: Faker::Movie.unique.title,
                    overview: Faker::Movie.quote,
                    poster_url: "#{Faker::TvShows::HowIMetYourMother.character}.com",
                    rating: rand(0.1..9.1).round(2))
  movie.save!
end

puts "All movies created"
