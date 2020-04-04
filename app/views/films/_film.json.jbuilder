json.extract! film, :id, :title, :synopsis, :created_at, :updated_at
json.url film_url(film, format: :json)
