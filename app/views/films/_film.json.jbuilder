json.extract! film, :id, :name, :year, :pass_stemdel_test, :created_at, :updated_at
json.url film_url(film, format: :json)
