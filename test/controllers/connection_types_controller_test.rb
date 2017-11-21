require 'test_helper'

class ConnectionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @connection_type = connection_types(:one)
  end

  test "should get index" do
    get connection_types_url
    assert_response :success
  end

  test "should get new" do
    get new_connection_type_url
    assert_response :success
  end

  test "should create connection_type" do
    assert_difference('ConnectionType.count') do
      post connection_types_url, params: { connection_type: { title: @connection_type.title } }
    end

    assert_redirected_to connection_type_url(ConnectionType.last)
  end

  test "should show connection_type" do
    get connection_type_url(@connection_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_connection_type_url(@connection_type)
    assert_response :success
  end

  test "should update connection_type" do
    patch connection_type_url(@connection_type), params: { connection_type: { title: @connection_type.title } }
    assert_redirected_to connection_type_url(@connection_type)
  end

  test "should destroy connection_type" do
    assert_difference('ConnectionType.count', -1) do
      delete connection_type_url(@connection_type)
    end

    assert_redirected_to connection_types_url
  end
end
