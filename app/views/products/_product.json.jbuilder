json.extract! product, :id, :brand, :model, :description, :conditon, :title, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
