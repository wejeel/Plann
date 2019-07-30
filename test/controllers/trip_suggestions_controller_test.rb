require 'test_helper'

class TripSuggestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trip_suggestions_index_url
    assert_response :success
  end

end
