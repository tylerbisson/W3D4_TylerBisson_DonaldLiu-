# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "elephant123")
user2 = User.create(username: "appacademy456")

poll1 = Poll.create(user_id: user1.id, title: "election")
poll2 = Poll.create(user_id: user2.id, title: "favoritefood")

question1 = Question.create(poll_id: poll1.id, body: "Who to vote?")
question2 = Question.create(poll_id: poll2.id, body: "What to eat?")

a1 = AnswerChoice.create(question_id: question1.id, body: "Democrat")
a2 = AnswerChoice.create(question_id: question2.id, body: "apple")

r1 = Response.create(user_id: user1.id, answer_choice_id: a1.id)
r2 = Response.create(user_id: user2.id, answer_choice_id: a2.id)

