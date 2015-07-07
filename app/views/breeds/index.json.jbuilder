json.array!(@breeds) do |breed|
  json.extract! breed, :id, :id, :name, :egg_id, :Animal_id
  json.url breed_url(breed, format: :json)
end
