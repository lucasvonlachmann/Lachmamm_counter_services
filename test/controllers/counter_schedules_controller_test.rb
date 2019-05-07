require 'test_helper'

class CounterSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @counter_schedule = counter_schedules(:one)
  end

  test "should get index" do
    get counter_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_counter_schedule_url
    assert_response :success
  end

  test "should create counter_schedule" do
    assert_difference('CounterSchedule.count') do
      post counter_schedules_url, params: { counter_schedule: { branch_id: @counter_schedule.branch_id, date: @counter_schedule.date, hour: @counter_schedule.hour } }
    end

    assert_redirected_to counter_schedule_url(CounterSchedule.last)
  end

  test "should show counter_schedule" do
    get counter_schedule_url(@counter_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_counter_schedule_url(@counter_schedule)
    assert_response :success
  end

  test "should update counter_schedule" do
    patch counter_schedule_url(@counter_schedule), params: { counter_schedule: { branch_id: @counter_schedule.branch_id, date: @counter_schedule.date, hour: @counter_schedule.hour } }
    assert_redirected_to counter_schedule_url(@counter_schedule)
  end

  test "should destroy counter_schedule" do
    assert_difference('CounterSchedule.count', -1) do
      delete counter_schedule_url(@counter_schedule)
    end

    assert_redirected_to counter_schedules_url
  end
end
