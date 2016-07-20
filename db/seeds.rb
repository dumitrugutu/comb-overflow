10.times do
  User.create(display_name: Faker::Name.name , email: Faker::Internet.email, password: "password")
end

25.times do
  Question.create(content: Faker::Hipster.sentence + "?", user: User.find(rand(1..10)))
end

25.times do
  Answer.create(content: Faker::Hipster.sentence, user: User.find(rand(1..10)), question: Question.find(rand(1..25)))
end

20.times do
  Comment.create(content: Faker::Hipster.sentence, user: User.find(rand(1..10)), commentable_id: rand(1..25), commentable_type: "Question")
end

20.times do
  Comment.create(content: Faker::Hipster.sentence, user: User.find(rand(1..10)), commentable_id: rand(1..25), commentable_type: "Answer")
end
