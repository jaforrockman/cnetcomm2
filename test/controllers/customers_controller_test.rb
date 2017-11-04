require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { address: @customer.address, billing_code: @customer.billing_code, connection_type: @customer.connection_type, contact_no: @customer.contact_no, contact_person: @customer.contact_person, customer_id: @customer.customer_id, email: @customer.email, ip_address: @customer.ip_address, mac_address: @customer.mac_address, name: @customer.name, status: @customer.status } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { address: @customer.address, billing_code: @customer.billing_code, connection_type: @customer.connection_type, contact_no: @customer.contact_no, contact_person: @customer.contact_person, customer_id: @customer.customer_id, email: @customer.email, ip_address: @customer.ip_address, mac_address: @customer.mac_address, name: @customer.name, status: @customer.status } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
