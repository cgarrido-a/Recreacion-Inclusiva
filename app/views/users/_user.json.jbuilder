json.extract! user, :id, :name, :rut, :age, :address, :avatar, :created_at, :updated_at
json.url user_url(user, format: :json)
