require 'test_helper'

class PastsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pasts_index_url
    assert_response :success
  end

  test "should get new" do
    get pasts_new_url
    assert_response :success
  end

  test "should get edit" do
    get pasts_edit_url
    assert_response :success
  end

end
