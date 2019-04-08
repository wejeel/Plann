require 'test_helper'

class BudgetplannerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get budgetplanner_index_url
    assert_response :success
  end

end
