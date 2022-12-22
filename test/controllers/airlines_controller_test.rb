require "test_helper"

class AirlinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get airlines_index_url
    assert_response :success
  end

  test "should get show" do
    get airlines_show_url
    assert_response :success
  end

  test "should get create" do
    get airlines_create_url
    assert_response :success
  end

  test "should get update" do
    get airlines_update_url
    assert_response :success
  end

  test "should get destroy" do
    get airlines_destroy_url
    assert_response :success
  end
end
