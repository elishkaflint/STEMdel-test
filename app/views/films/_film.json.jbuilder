json.extract! film, :id, :name, :year, :rating, :created_at, :updated_at
json.url film_url(film, format: :json)
