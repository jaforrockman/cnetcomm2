json.array!(@bills) do |bill|
  json.extract! bill, :id, :customer_name, :bill_amount, :valid_up_to, :transaction_type
  json.url bill_url(bill, format: :json)
end
