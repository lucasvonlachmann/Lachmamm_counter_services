require "application_system_test_case"

class CounterSchedulesTest < ApplicationSystemTestCase
  setup do
    @counter_schedule = counter_schedules(:one)
  end

  test "visiting the index" do
    visit counter_schedules_url
    assert_selector "h1", text: "Counter Schedules"
  end

  test "creating a Counter schedule" do
    visit counter_schedules_url
    click_on "New Counter Schedule"

    fill_in "Branch", with: @counter_schedule.branch_id
    fill_in "Date", with: @counter_schedule.date
    fill_in "Hour", with: @counter_schedule.hour
    click_on "Create Counter schedule"

    assert_text "Counter schedule was successfully created"
    click_on "Back"
  end

  test "updating a Counter schedule" do
    visit counter_schedules_url
    click_on "Edit", match: :first

    fill_in "Branch", with: @counter_schedule.branch_id
    fill_in "Date", with: @counter_schedule.date
    fill_in "Hour", with: @counter_schedule.hour
    click_on "Update Counter schedule"

    assert_text "Counter schedule was successfully updated"
    click_on "Back"
  end

  test "destroying a Counter schedule" do
    visit counter_schedules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Counter schedule was successfully destroyed"
  end
end
