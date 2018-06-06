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


200.times do
  title = Faker::Lorem.sentence(10).titleize
  score = rand(1000..20000)
  subeddit =  ["ASKREDDIT","WORLDNEWS","VIDEOS","FUNNY","TODAYILEARNED","PICS","GAMING"].sample
  num_comments = rand(100..1000)
  timestamp = Time.now
  username = Faker::HarryPotter.character
  EdditPost.create!(title: title,
                    timestamp: timestamp,
                    subeddit: subeddit,
                    score: score,
                    username:username,
                    num_comments:num_comments)
end
