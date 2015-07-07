json.array!(@incomes) do |income|
  json.extract! income, :id, :id, :egg_id, :quantity_sold, :amount, :Farm_id
  json.url income_url(income, format: :json)
end
