json.array!(@farms) do |farm|
  json.extract! farm, :id, :animal_id, :income_id, :expense_id, :weather_id
  json.url farm_url(farm, format: :json)
end
