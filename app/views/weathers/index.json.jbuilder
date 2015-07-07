json.array!(@weathers) do |weather|
  json.extract! weather, :id, :high_temp, :low_temp, :wind_speed, :precipitation, :sunrise, :sunset, :location_id, :Location_id
  json.url weather_url(weather, format: :json)
end
