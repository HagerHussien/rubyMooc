json.extract! lecture, :id, :title, :course_id, :created_at, :updated_at
json.url lecture_url(lecture, format: :json)
