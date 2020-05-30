# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Story.destroy_all

puts "Creating stories incl. 2-5 comments..."

5.times do
  s = Story.create!(name: Faker::TvShows::HowIMetYourMother.character,
                    text: Faker::TvShows::HowIMetYourMother.quote
                    )
  rand(2..5).times do
    Comment.create!(name: Faker::TvShows::GameOfThrones.character,
                    content: Faker::TvShows::GameOfThrones.quote,
                    story_id: s.id)
  end
end
puts "Finished !"
