json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password, :password_confirmation, :location_id, :Location_id
  json.url user_url(user, format: :json)
end
