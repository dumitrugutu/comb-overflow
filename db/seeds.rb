User.create(display_name: "Gumitru Dutu" , email: "dmt@hairstyle.com", password: "password")

User.create(display_name: "Jill Wung", email: "will@gmail.com", password: "password")

User.create(display_name: "Wobert Rashington", email: "wobert@dc.com", password: "password")

User.create(display_name: "Sleks Atevenson", email: "slacks@flax.nafta", password: "password")

Question.create(content: "How does Dumitru's hair not move all day? Does he wake up like this?", user_id: 2)
Question.create(content: "Does Rogaine work the same way for facial hair?", user_id: 2)
Question.create(content: "What do I put in my hair to make it flow like the falls of Niagara", user_id: 2)
Question.create(content: "If I spray painted my bald spot would people notice? Lol", user_id: 2)

Answer.create(content: "Fk off buddy. Thx.", user_id: 1, question_id: 1)
Answer.create(content: "He sleeps standing up.", user_id: 4, question_id: 1)

# 10.times do
#   User.create(display_name: Faker::Name.name , email: Faker::Internet.email, password: "password")
# end

# 25.times do
#   Question.create(content: Faker::Hipster.sentence + "?", user: User.find(rand(1..10)))
# end

# 25.times do
#   Answer.create(content: Faker::Hipster.sentence, user: User.find(rand(1..10)), question: Question.find(rand(1..25)))
# end

# 20.times do
#   Comment.create(content: Faker::Hipster.sentence, user: User.find(rand(1..10)), commentable_id: rand(1..25), commentable_type: "Question")
# end

# 20.times do
#   Comment.create(content: Faker::Hipster.sentence, user: User.find(rand(1..10)), commentable_id: rand(1..25), commentable_type: "Answer")
# end
