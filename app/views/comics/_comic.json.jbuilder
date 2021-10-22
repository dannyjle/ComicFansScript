json.extract! comic, :id, :name, :number, :volume, :publisher, :writer, :description, :created_at, :updated_at
json.url comic_url(comic, format: :json)
