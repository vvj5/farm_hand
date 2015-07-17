json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :chicken, :duck, :goose, :turkey, :guinea, :quail, :brown, :white, :blue, :drkbrn, :speckled
  json.url inventory_url(inventory, format: :json)
end
