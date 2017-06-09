json.extract! course, :id, :title, :code, :created_at, :updated_at
json.teacher_id course.person_id
json.url course_url(course, format: :json)
