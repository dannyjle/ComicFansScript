json.extract! comic, :id, :name, :number, :volume, :publisher, :creator, :created_at, :updated_at
json.url comic_url(comic, format: :json)
