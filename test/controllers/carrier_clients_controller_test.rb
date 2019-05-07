require 'test_helper'

class CarrierClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrier_client = carrier_clients(:one)
  end

  test "should get index" do
    get carrier_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_carrier_client_url
    assert_response :success
  end

  test "should create carrier_client" do
    assert_difference('CarrierClient.count') do
      post carrier_clients_url, params: { carrier_client: { name: @carrier_client.name } }
    end

    assert_redirected_to carrier_client_url(CarrierClient.last)
  end

  test "should show carrier_client" do
    get carrier_client_url(@carrier_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_carrier_client_url(@carrier_client)
    assert_response :success
  end

  test "should update carrier_client" do
    patch carrier_client_url(@carrier_client), params: { carrier_client: { name: @carrier_client.name } }
    assert_redirected_to carrier_client_url(@carrier_client)
  end

  test "should destroy carrier_client" do
    assert_difference('CarrierClient.count', -1) do
      delete carrier_client_url(@carrier_client)
    end

    assert_redirected_to carrier_clients_url
  end
end
