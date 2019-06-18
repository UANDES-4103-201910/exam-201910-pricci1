json.extract! product, :id, :brand, :model, :variant, :short_description, :long_description, :product_type, :created_at, :updated_at
json.url product_url(product, format: :json)
