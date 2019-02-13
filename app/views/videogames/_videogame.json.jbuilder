json.extract! videogame, :id, :title, :publisher, :platform, :year, :condition, :upc, :created_at, :updated_at
json.url videogame_url(videogame, format: :json)
