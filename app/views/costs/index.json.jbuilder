json.array!(@costs) do |cost|
  json.extract! cost, :id, :date, :name, :type, :cost_amount
  json.url cost_url(cost, format: :json)
end
