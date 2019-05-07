require 'test_helper'

class CounterServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @counter_service = counter_services(:one)
  end

  test "should get index" do
    get counter_services_url
    assert_response :success
  end

  test "should get new" do
    get new_counter_service_url
    assert_response :success
  end

  test "should create counter_service" do
    assert_difference('CounterService.count') do
      post counter_services_url, params: { counter_service: { counter_document_id: @counter_service.counter_document_id, counter_schedule_id: @counter_service.counter_schedule_id, counter_service_type_id: @counter_service.counter_service_type_id, service_status_id: @counter_service.service_status_id, user_description: @counter_service.user_description, user_id: @counter_service.user_id } }
    end

    assert_redirected_to counter_service_url(CounterService.last)
  end

  test "should show counter_service" do
    get counter_service_url(@counter_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_counter_service_url(@counter_service)
    assert_response :success
  end

  test "should update counter_service" do
    patch counter_service_url(@counter_service), params: { counter_service: { counter_document_id: @counter_service.counter_document_id, counter_schedule_id: @counter_service.counter_schedule_id, counter_service_type_id: @counter_service.counter_service_type_id, service_status_id: @counter_service.service_status_id, user_description: @counter_service.user_description, user_id: @counter_service.user_id } }
    assert_redirected_to counter_service_url(@counter_service)
  end

  test "should destroy counter_service" do
    assert_difference('CounterService.count', -1) do
      delete counter_service_url(@counter_service)
    end

    assert_redirected_to counter_services_url
  end
end
