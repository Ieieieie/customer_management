require 'test_helper'

class HistoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get history_index_url
    assert_response :success
  end

  test "should get show" do
    get history_show_url
    assert_response :success
  end

  test "should get edit" do
    get history_edit_url
    assert_response :success
  end

  test "should get new" do
    get history_new_url
    assert_response :success
  end

end
