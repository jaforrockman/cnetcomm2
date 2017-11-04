json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :customer_id, :mac_address, :ip_address, :connection_type, :status, :billing_code, :address, :contact_no, :contact_person, :email
  json.url customer_url(customer, format: :json)
end
