json.extract! event, :id, :date_time_image_name, :title, :speaker, :venue, :register_link, :poster_image_name, :created_at, :updated_at
json.url event_url(event, format: :json)
