json.extract! student, :id, :sid, :name, :year, :branch, :dob, :created_at, :updated_at
json.url student_url(student, format: :json)
