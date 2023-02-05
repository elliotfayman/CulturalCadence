require "test_helper"

class TopFiveControllerTest < ActionDispatch::IntegrationTest
  test "should get topfive" do
    get top_five_topfive_url
    assert_response :success
  end
end
