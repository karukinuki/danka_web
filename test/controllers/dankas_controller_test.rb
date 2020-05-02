require 'test_helper'

class DankasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dankas_index_url
    assert_response :success
  end

  test "should get new" do
    get dankas_new_url
    assert_response :success
  end

  test "should get edit" do
    get dankas_edit_url
    assert_response :success
  end

  test "should get show" do
    get dankas_show_url
    assert_response :success
  end

end
