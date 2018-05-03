# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
User.destroy_all

  # Wizards
  hagrid = User.create!(username: 'Rubeus Hagrid')
  harry = User.create!(username: 'Harry Potter')
  hermione = User.create!(username: 'Hermione Granger')
  dumbledore = User.create!(username: "Albus Dumbledore")

  Poll.destroy_all
  poll1 = Poll.create!(author_id: hagrid.id, title: "You're a wizard, Harry.")

  poll2 = Poll.create!(author_id: hagrid.id, title: "I solemnly swear I am up to no good.")

  poll3 = Poll.create!(author_id: hermione.id, title: "It’s wingardium leviOsa, not leviosAH.")
  poll4 = Poll.create!(author_id: hermione.id, title: "We could all have been killed or worse, expelled.")
  poll5 = Poll.create!(author_id: hermione.id, title: "Just because you have the emotional range of a teaspoon doesn’t mean we all have.")

  poll6 = Poll.create!(author_id: dumbledore.id, title: "Words are, in my not-so-humble opinion, our most inexhaustible source of magic.")
  poll7 = Poll.create!(author_id: dumbledore.id, title: "It takes a great deal of bravery to stand up to our enemies, but just as much to stand up to our friends.")
  poll8 = Poll.create!(author_id: dumbledore.id, title: "It is our choices, Harry, that show what we truly are, far more than our abilities.")
  poll9 = Poll.create!(author_id: dumbledore.id, title: "Happiness can be found even in the darkest of times if only one remembers to turn on the light.")

  Question.destroy_all

    question1 = Question.create!(body: "I am question 1?", poll_id: poll1.id)
    question2 = Question.create!(body: "I am question 2?", poll_id: poll1.id)
    question3 = Question.create!(body: "I am question 3?", poll_id: poll1.id)
    question4 = Question.create!(body: "I am question 4?", poll_id: poll1.id)
    question5 = Question.create!(body: "I am question 5?", poll_id: poll1.id)
    question6 = Question.create!(body: "I am question 6?", poll_id: poll2.id)
    question7 = Question.create!(body: "I am question 7?", poll_id: poll2.id)
    question8 = Question.create!(body: "I am question 8?", poll_id: poll2.id)
    question9 = Question.create!(body: "I am question 9?", poll_id: poll3.id)
    question10 = Question.create!(body: "I am question 10?", poll_id: poll4.id)

    AnswerChoice.destroy_all

    answer1 = AnswerChoice.create!(answer: "Yes", question_id: question1.id)
    answer2 = AnswerChoice.create!(answer: "No", question_id: question1.id)
    answer3 = AnswerChoice.create!(answer: "Yes", question_id: question2.id)
    answer4 = AnswerChoice.create!(answer: "No", question_id: question2.id)
    answer4 = AnswerChoice.create!(answer: "Maybe", question_id: question2.id)
    answer5 = AnswerChoice.create!(answer: "Yes", question_id: question3.id)
    answer6 = AnswerChoice.create!(answer: "No", question_id: question3.id)
    answer7 = AnswerChoice.create!(answer: "Yes", question_id: question4.id)
    answer8 = AnswerChoice.create!(answer: "No", question_id: question4.id)
    answer9 = AnswerChoice.create!(answer: "Yes", question_id: question5.id)
    answer10 = AnswerChoice.create!(answer: "No", question_id: question5.id)
    answer11 = AnswerChoice.create!(answer: "Yes", question_id: question6.id)
    answer12 = AnswerChoice.create!(answer: "No", question_id: question6.id)
    answer13 = AnswerChoice.create!(answer: "Yes", question_id: question7.id)
    answer14 = AnswerChoice.create!(answer: "No", question_id: question7.id)
    answer15 = AnswerChoice.create!(answer: "Yes", question_id: question8.id)
    answer16 = AnswerChoice.create!(answer: "No", question_id: question8.id)
    answer17 = AnswerChoice.create!(answer: "Yes", question_id: question9.id)
    answer18 = AnswerChoice.create!(answer: "No", question_id: question9.id)
    answer19 = AnswerChoice.create!(answer: "Yes", question_id: question10.id)
    answer20 = AnswerChoice.create!(answer: "No", question_id: question10.id)

  Response.destroy_all

  # Hargrid is nice and likes everyone's questions (even his own)
  Response.create!(user_key: hagrid.id, question_key: question1.id, answer_key: answer1.id)
  Response.create!(user_key: hagrid.id, question_key: question2.id, answer_key: answer2.id)
  Response.create!(user_key: hagrid.id, question_key: question3.id, answer_key: answer3.id)
  Response.create!(user_key: hagrid.id, question_key: question4.id, answer_key: answer4.id)
  Response.create!(user_key: hagrid.id, question_key: question5.id, answer_key: answer5.id)
  Response.create!(user_key: hagrid.id, question_key: question6.id, answer_key: answer6.id)
  Response.create!(user_key: hagrid.id, question_key: question7.id, answer_key: answer7.id)
  Response.create!(user_key: hagrid.id, question_key: question8.id, answer_key: answer8.id)
  Response.create!(user_key: hagrid.id, question_key: question9.id, answer_key: answer9.id)

  # Harry only likes Dumbledore's
  Response.create!(user_key: harry.id, question_key: question6.id, answer_key: answer10.id)
  Response.create!(user_key: harry.id, question_key: question7.id, answer_key: answer11.id)
  Response.create!(user_key: harry.id, question_key: question8.id, answer_key: answer12.id)
  Response.create!(user_key: harry.id, question_key: question9.id, answer_key: answer13.id)

  # Hermione only likes her own
  Response.create!(user_key: hermione.id, question_key: question3.id, answer_key: answer14.id)
  Response.create!(user_key: hermione.id, question_key: question4.id, answer_key: answer15.id)
  Response.create!(user_key: hermione.id, question_key: question5.id, answer_key: answer16.id)

  # Dumbledore is also nice and likes everyone's questions (even his own)
  Response.create!(user_key: dumbledore.id, question_key: question1.id, answer_key: answer16.id)
  Response.create!(user_key: dumbledore.id, question_key: question2.id, answer_key: answer17.id)
  Response.create!(user_key: dumbledore.id, question_key: question3.id, answer_key: answer18.id)
  Response.create!(user_key: dumbledore.id, question_key: question4.id, answer_key: answer19.id)
  Response.create!(user_key: dumbledore.id, question_key: question5.id, answer_key: answer20.id)
  Response.create!(user_key: dumbledore.id, question_key: question6.id, answer_key: answer19.id)
  Response.create!(user_key: dumbledore.id, question_key: question7.id, answer_key: answer18.id)
  Response.create!(user_key: dumbledore.id, question_key: question8.id, answer_key: answer17.id)
  Response.create!(user_key: dumbledore.id, question_key: question9.id, answer_key: answer16.id)
end
