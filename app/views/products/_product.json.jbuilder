json.extract! product, :id, :name, :decription, :image_url, :created_at, :updated_at
json.url product_url(product, format: :json)
