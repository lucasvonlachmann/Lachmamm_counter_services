require "application_system_test_case"

class CounterDocumentsTest < ApplicationSystemTestCase
  setup do
    @counter_document = counter_documents(:one)
  end

  test "visiting the index" do
    visit counter_documents_url
    assert_selector "h1", text: "Counter Documents"
  end

  test "creating a Counter document" do
    visit counter_documents_url
    click_on "New Counter Document"

    fill_in "Carrier client", with: @counter_document.carrier_client_id
    fill_in "Carrier", with: @counter_document.carrier_id
    fill_in "Number", with: @counter_document.number
    click_on "Create Counter document"

    assert_text "Counter document was successfully created"
    click_on "Back"
  end

  test "updating a Counter document" do
    visit counter_documents_url
    click_on "Edit", match: :first

    fill_in "Carrier client", with: @counter_document.carrier_client_id
    fill_in "Carrier", with: @counter_document.carrier_id
    fill_in "Number", with: @counter_document.number
    click_on "Update Counter document"

    assert_text "Counter document was successfully updated"
    click_on "Back"
  end

  test "destroying a Counter document" do
    visit counter_documents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Counter document was successfully destroyed"
  end
end
