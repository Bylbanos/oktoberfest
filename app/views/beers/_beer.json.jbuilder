json.extract! beer, :id, :title, :description, :price, :opened, :created_at, :updated_at
json.url beer_url(beer, format: :json)
