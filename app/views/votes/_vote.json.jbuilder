json.extract! vote, :id, :topic_id, :created_at, :updated_at
json.url vote_url(vote, format: :json)