# frozen_string_literal: true

5.times do
  Exercise.create({
                    name: Faker::Book.title,
                    description: Faker::Lorem.sentence
                  })
end

5.times do
  User.create({
                username: Faker::Name.name,
                password: Faker::Name.name
              })
end
