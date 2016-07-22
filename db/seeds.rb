
User.create(display_name: "Gumitru Dutu" , email: "dmt@hairstyle.com", password: "password")

User.create(display_name: "Jill Wung", email: "will@gmail.com", password: "password")

User.create(display_name: "Wobert Rashington", email: "wobert@dc.com", password: "password")

User.create(display_name: "Sleks Atevenson", email: "slacks@flax.nafta", password: "password")

Question.create(content: "Does parting my hair to the left mean that I'm left-handed?", user_id: 1)
Question.create(content: "How does Dumitru's hair not move all day? Does he wake up like this?", user_id: 2)
Question.create(content: "I want to comb Dracula's hair, but the Pope took my pitch fork. Where can I get another one?", user_id: 3)

Question.create(content: "I bought some glue to wrap presents for christmas and I inadvertently sniffed some of it. Now my hair is all messed up. How do I save the puppy?", user_id: 1)
Question.create(content: "What do I put in my hair to make it flow like the falls of Niagara", user_id: 2)
Question.create(content: "What is love? Baby don't hurt me, don't hurt me, no more", user_id: 3)
Question.create(content: "How can I sleep at night so I don't have to comb my hair in the morning?", user_id: 1)

Question.create(content: "Does Rogaine work the same way for facial hair?", user_id: 2)
Question.create(content: "My best friend is getting married and I need to buy a nice toupee to cover that barren top of my head. Any suggestions?", user_id: 1)
Question.create(content: "If I spray painted my bald spot would people notice? Lol", user_id: 2)

Answer.create(content: "Fk off buddy. Thx.", user_id: 1, question_id: 1)
Answer.create(content: "Try using a toupee or the heat will damage your already barren head.", user_id: 1, question_id: 5)

Answer.create(content: "He sleeps standing up.", user_id: 4, question_id: 1)
Answer.create(content: "HAHA! It takes years of parctice. And a bucket of molding cream.", user_id: 1, question_id: 1)

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
