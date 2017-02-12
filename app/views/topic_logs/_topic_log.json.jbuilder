json.extract! topic_log, :id, :person_id, :topic_id, :posted, :created_at, :updated_at
json.url topic_log_url(topic_log, format: :json)