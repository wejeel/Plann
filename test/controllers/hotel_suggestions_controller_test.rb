require 'test_helper'

class HotelSuggestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hotel_suggestions_index_url
    assert_response :success
  end

end
