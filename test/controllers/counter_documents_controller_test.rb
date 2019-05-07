require 'test_helper'

class CounterDocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @counter_document = counter_documents(:one)
  end

  test "should get index" do
    get counter_documents_url
    assert_response :success
  end

  test "should get new" do
    get new_counter_document_url
    assert_response :success
  end

  test "should create counter_document" do
    assert_difference('CounterDocument.count') do
      post counter_documents_url, params: { counter_document: { carrier_client_id: @counter_document.carrier_client_id, carrier_id: @counter_document.carrier_id, number: @counter_document.number } }
    end

    assert_redirected_to counter_document_url(CounterDocument.last)
  end

  test "should show counter_document" do
    get counter_document_url(@counter_document)
    assert_response :success
  end

  test "should get edit" do
    get edit_counter_document_url(@counter_document)
    assert_response :success
  end

  test "should update counter_document" do
    patch counter_document_url(@counter_document), params: { counter_document: { carrier_client_id: @counter_document.carrier_client_id, carrier_id: @counter_document.carrier_id, number: @counter_document.number } }
    assert_redirected_to counter_document_url(@counter_document)
  end

  test "should destroy counter_document" do
    assert_difference('CounterDocument.count', -1) do
      delete counter_document_url(@counter_document)
    end

    assert_redirected_to counter_documents_url
  end
end
