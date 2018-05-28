# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
  content = Faker::Lorem.sentence(40)
  url = "www." + Faker::Lorem.word + ".com"
  timestamp = Time.now
  title = Faker::Lorem.sentence(5)
  PageResult.create!(title: title, timestamp: timestamp, content: content, url: url)
end
