Post.destroy_all
Answer.destroy_all

posts = []

10.times do
  posts << Post.create(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph)
end

posts.each do |post|
  2.times do
    Answer.create(description: Faker::Lorem.paragraph, post: post)
  end
end
