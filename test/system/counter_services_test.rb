require "application_system_test_case"

class CounterServicesTest < ApplicationSystemTestCase
  setup do
    @counter_service = counter_services(:one)
  end

  test "visiting the index" do
    visit counter_services_url
    assert_selector "h1", text: "Counter Services"
  end

  test "creating a Counter service" do
    visit counter_services_url
    click_on "New Counter Service"

    fill_in "Counter document", with: @counter_service.counter_document_id
    fill_in "Counter schedule", with: @counter_service.counter_schedule_id
    fill_in "Counter service type", with: @counter_service.counter_service_type_id
    fill_in "Service status", with: @counter_service.service_status_id
    fill_in "User description", with: @counter_service.user_description
    fill_in "User", with: @counter_service.user_id
    click_on "Create Counter service"

    assert_text "Counter service was successfully created"
    click_on "Back"
  end

  test "updating a Counter service" do
    visit counter_services_url
    click_on "Edit", match: :first

    fill_in "Counter document", with: @counter_service.counter_document_id
    fill_in "Counter schedule", with: @counter_service.counter_schedule_id
    fill_in "Counter service type", with: @counter_service.counter_service_type_id
    fill_in "Service status", with: @counter_service.service_status_id
    fill_in "User description", with: @counter_service.user_description
    fill_in "User", with: @counter_service.user_id
    click_on "Update Counter service"

    assert_text "Counter service was successfully updated"
    click_on "Back"
  end

  test "destroying a Counter service" do
    visit counter_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Counter service was successfully destroyed"
  end
end
