json.array!(@animals) do |animal|
  json.extract! animal, :id, :id, :name, :breed_id, :egg_id
  json.url animal_url(animal, format: :json)
end
