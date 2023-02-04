require "test_helper"

class TopTenControllerTest < ActionDispatch::IntegrationTest
  test "should get topten" do
    get top_ten_topten_url
    assert_response :success
  end
end
