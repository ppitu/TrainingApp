5.times do
  Exercise.create({
    name: Faker::Book.title,
    description: Faker::Lorem.sentence
  })
end
