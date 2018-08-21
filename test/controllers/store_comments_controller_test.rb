require 'test_helper'

class StoreCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get store_comments_create_url
    assert_response :success
  end

  test "should get delete" do
    get store_comments_delete_url
    assert_response :success
  end

end
