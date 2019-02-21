require 'test_helper'

class RatingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get ratings_new_url
    assert_response :success
  end

  test "should get edit" do
    get ratings_edit_url
    assert_response :success
  end

  test "should get delete" do
    get ratings_delete_url
    assert_response :success
  end

end
