require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get dashboard_edit_url
    assert_response :success
  end

  test "should get update" do
    get dashboard_update_url
    assert_response :success
  end

  test "should get show" do
    get dashboard_show_url
    assert_response :success
  end

  test "should get delete" do
    get dashboard_delete_url
    assert_response :success
  end

end
