require "application_system_test_case"

class CounterServiceTypesTest < ApplicationSystemTestCase
  setup do
    @counter_service_type = counter_service_types(:one)
  end

  test "visiting the index" do
    visit counter_service_types_url
    assert_selector "h1", text: "Counter Service Types"
  end

  test "creating a Counter service type" do
    visit counter_service_types_url
    click_on "New Counter Service Type"

    fill_in "Name", with: @counter_service_type.name
    click_on "Create Counter service type"

    assert_text "Counter service type was successfully created"
    click_on "Back"
  end

  test "updating a Counter service type" do
    visit counter_service_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @counter_service_type.name
    click_on "Update Counter service type"

    assert_text "Counter service type was successfully updated"
    click_on "Back"
  end

  test "destroying a Counter service type" do
    visit counter_service_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Counter service type was successfully destroyed"
  end
end
