require "test_helper"

class PromotorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get promotors_index_url
    assert_response :success
  end
end
