require 'minitest/autorun'
require 'budgetGenerator'

class BudgetGeneratorTest < Minitest::Test
  # Test if budget class returns amount from method
  
  def test_is_budget_amount_generated
    assert_equal(1000, BasicBudget.new(1000).amount)
  end
  
   # Test if budget class returns aggressive savings type number from method
    def test_is_aggressive_savings_set
    assert_equal(0.20, BasicBudget.new(1000).aggressive_savings)
    end
    
 # Test if budget class returns medium savings type number from method
    def test_is_medium_savings_set
    assert_equal(0.13, BasicBudget.new(1000).medium_savings)
    end
    
     # Test if budget class returns low savings type number from method
    def test_is_low_savings_set
    assert_equal(0.05, BasicBudget.new(1000).low_savings)
    end
  
end