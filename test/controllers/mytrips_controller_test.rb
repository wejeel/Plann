require 'test_helper'

class MytripsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mytrips_index_url
    assert_response :success
  end

end
