json.extract! address, :id, :phone, :address_line_1, :address_line_2, :city, :county, :zip_code, :user_id, :created_at, :updated_at
json.url address_url(address, format: :json)
