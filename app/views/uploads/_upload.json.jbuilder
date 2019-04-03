json.extract! upload, :id, :title, :publisher, :platform, :year, :condition, :genre, :created_at, :updated_at
json.url upload_url(upload, format: :json)
