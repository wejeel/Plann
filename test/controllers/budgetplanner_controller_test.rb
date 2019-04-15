require 'test_helper'

class BudgetplannerControllerTest < ActionDispatch::IntegrationTest
  
  include Devise::Test::ControllerHelpers # <-- Include helpers
  
  test "should get index" do
    get budgetplanner_index_url
    assert_response :success
  end

end
