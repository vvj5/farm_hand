json.array!(@expenses) do |expense|
  json.extract! expense, :id, :id, :title, :amount, :Farm_id
  json.url expense_url(expense, format: :json)
end
