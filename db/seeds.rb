10.times do
  Post.create(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph)
end
