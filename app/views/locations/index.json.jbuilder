json.array!(@locations) do |location|
  json.extract! location, :id, :id, :zipcode, :user_id, :weather_id
  json.url location_url(location, format: :json)
end
