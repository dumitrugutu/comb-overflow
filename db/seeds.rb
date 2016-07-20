10.times do
  User.create(display_name: Faker::Name.name , email: Faker::Internet.email, password: "password")
end

25.times do
  Question.create(content: Faker::Hipster.sentence + "?", user: User.find(rand(1..10)))
end

25.times do
  Answer.create(content: Faker::Hipster.sentence, user: User.find(rand(1..10)), question: Question.find(rand(1..25)))
end
