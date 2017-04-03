json.extract! student, :id, :name, :pin, :email, :phno, :address, :cgpa, :abacklog, :placed, :created_at, :updated_at
json.url student_url(student, format: :json)
