json.array!(@users) do |user|
  json.extract! user, :id, :name, :age, :address, :avatar_image
  json.url user_url(user, format: :json)
end
