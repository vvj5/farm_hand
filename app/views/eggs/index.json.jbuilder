json.array!(@eggs) do |egg|
  json.extract! egg, :id, :id, :color_id, :price, :Animal_id, :Income_id
  json.url egg_url(egg, format: :json)
end
