json.extract! order, :id, :user_id, :billing_address_id, :shipping_address_id, :created_at, :updated_at
json.url order_url(order, format: :json)
