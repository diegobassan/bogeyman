json.extract! user_type, :id, :name, :description, :authorizeDiscount, :comissionPercentage, :created_at, :updated_at
json.url user_type_url(user_type, format: :json)
