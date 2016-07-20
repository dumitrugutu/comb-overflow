25.times do
  Question.create(content: Faker::Hipster.sentence + "?", user_id: rand(9) + 1)
end

10.times do
  User.create(display_name: Faker::Name.name , email: Faker::Internet.email, password: "password")
end
