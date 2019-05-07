require "application_system_test_case"

class CarrierClientsTest < ApplicationSystemTestCase
  setup do
    @carrier_client = carrier_clients(:one)
  end

  test "visiting the index" do
    visit carrier_clients_url
    assert_selector "h1", text: "Carrier Clients"
  end

  test "creating a Carrier client" do
    visit carrier_clients_url
    click_on "New Carrier Client"

    fill_in "Name", with: @carrier_client.name
    click_on "Create Carrier client"

    assert_text "Carrier client was successfully created"
    click_on "Back"
  end

  test "updating a Carrier client" do
    visit carrier_clients_url
    click_on "Edit", match: :first

    fill_in "Name", with: @carrier_client.name
    click_on "Update Carrier client"

    assert_text "Carrier client was successfully updated"
    click_on "Back"
  end

  test "destroying a Carrier client" do
    visit carrier_clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carrier client was successfully destroyed"
  end
end
