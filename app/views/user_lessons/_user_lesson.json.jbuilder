json.extract! user_lesson, :id, :score, :user_id, :lesson_id, :created_at, :updated_at
json.url user_lesson_url(user_lesson, format: :json)