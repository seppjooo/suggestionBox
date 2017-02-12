json.extract! person, :id, :fName, :lName, :course, :created_at, :updated_at
json.url person_url(person, format: :json)