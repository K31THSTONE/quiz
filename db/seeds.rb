User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
  title = Faker::Lorem.sentence(5)
  users.each { |user| user.quizzes.create!(title: title) }
end

quizzes = Quiz.order(:created_at).take(6)
50.times do
  title = Faker::Lorem.sentence(5)
  quizzes.each { |quiz| quiz.questions.create!(title: title) }
end

questions = Question.order(:created_at).take(6)
2.times do
  correct = true
  content = Faker::Lorem.sentence(1)
  questions.each { |question| question.answers.create!(content: content, correct: correct) }
end