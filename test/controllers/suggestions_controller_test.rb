require "test_helper"

class SuggestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get suggestions" do
    get suggestions_suggestions_url
    assert_response :success
  end
end
