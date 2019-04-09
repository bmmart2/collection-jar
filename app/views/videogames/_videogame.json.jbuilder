json.extract! videogame, :id, :title, :publisher, :genre, :platform, :year, :condition, :created_at, :updated_at
json.url videogame_url(videogame, format: :json)
