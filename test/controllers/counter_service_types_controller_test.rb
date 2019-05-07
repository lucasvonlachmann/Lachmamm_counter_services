require 'test_helper'

class CounterServiceTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @counter_service_type = counter_service_types(:one)
  end

  test "should get index" do
    get counter_service_types_url
    assert_response :success
  end

  test "should get new" do
    get new_counter_service_type_url
    assert_response :success
  end

  test "should create counter_service_type" do
    assert_difference('CounterServiceType.count') do
      post counter_service_types_url, params: { counter_service_type: { name: @counter_service_type.name } }
    end

    assert_redirected_to counter_service_type_url(CounterServiceType.last)
  end

  test "should show counter_service_type" do
    get counter_service_type_url(@counter_service_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_counter_service_type_url(@counter_service_type)
    assert_response :success
  end

  test "should update counter_service_type" do
    patch counter_service_type_url(@counter_service_type), params: { counter_service_type: { name: @counter_service_type.name } }
    assert_redirected_to counter_service_type_url(@counter_service_type)
  end

  test "should destroy counter_service_type" do
    assert_difference('CounterServiceType.count', -1) do
      delete counter_service_type_url(@counter_service_type)
    end

    assert_redirected_to counter_service_types_url
  end
end
