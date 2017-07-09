json.extract! quiz, :id, :title, :user_id, :question_ids, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
