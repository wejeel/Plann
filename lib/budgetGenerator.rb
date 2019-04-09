#super class defining a Basic Budget class
class BasicBudget
  def initialize(amount)
    @amount = amount
  end

  # getter method for amount
  def amount
    @amount
  end

  # getter method for savings type: aggressive
  def aggressive_savings
    0.20
  end

  # getter method for savings type: medium
  def medium_savings
    0.13
  end

  # getter method for savings type: low
  def low_savings
    0.05
  end

  # getter method for budget category array
  def budget_category
    @budget_category = ["Home_Rent", "Utilities", "Food_Groceries", "Departmental", "Entertainment", "Car_Auto", "Insurance_Medical", "Misc"]
  end

  # getter method for budget category percentage
  def budget_category_percentage
    @budget_category_percentage = [0.30, 0.25, 0.15, 0.10, 0.04, 0.06, 0.07, 0.03]
  end

  def generate_budget
    @h = Hash.new
    @budget_category = ["Home_Rent", "Utilities", "Food_Groceries", "Departmental", "Entertainment", "Car_Auto", "Insurance_Medical", "Misc"]
    @budget_category_percentage = [0.30, 0.25, 0.15, 0.10, 0.04, 0.06, 0.07, 0.03]

    @budget_category.each_with_index do |expense_item, expense_index|
      @percentage_for_budget_item = @budget_category_percentage[expense_index]
      @calculated_budget_for_item = @amount.to_f * @percentage_for_budget_item.to_f
      @h.store("#{expense_item}".to_s, @calculated_budget_for_item.to_f.round(2))
    end

    @h
    
  end
  
  def multiply
  @amount * 2
  end

end

#Aggressive savings type decorator class
class AggressiveSavings
  def initialize(basic_budget)
    @basic_budget = basic_budget
  end

  def generate_budget
    h = Hash.new
    aggressive_priority_savings = @basic_budget.aggressive_savings
    var = @basic_budget.amount * aggressive_priority_savings
    new_amount = @basic_budget.amount - var
    savings_type_name = 'aggressive'

    get_budget_category = @basic_budget.budget_category
    get_budget_percentage = @basic_budget.budget_category_percentage

    get_budget_category.each_with_index do |expense_item, expense_index|
      percentage_for_budget_item = get_budget_percentage[expense_index]
      calculated_budget_for_item = new_amount.to_f * percentage_for_budget_item.to_f
      h.store("#{expense_item}".to_s, calculated_budget_for_item.to_f.round(2))
    end

   h
  end
end

#Medium savings type decorator class
class MediumSavings
  def initialize(basic_budget)
    @basic_budget = basic_budget
  end

  def generate_budget
    h = Hash.new
    medium_priority_savings = @basic_budget.medium_savings
    var = @basic_budget.amount * medium_priority_savings
    new_amount = @basic_budget.amount - var
    savings_type_name = 'medium'

    get_budget_category = @basic_budget.budget_category
    get_budget_percentage = @basic_budget.budget_category_percentage

    get_budget_category.each_with_index do |expense_item, expense_index|
      percentage_for_budget_item = get_budget_percentage[expense_index]
      calculated_budget_for_item = new_amount.to_f * percentage_for_budget_item.to_f
      h.store("#{expense_item}".to_s, calculated_budget_for_item.to_f.round(2))
    end

   h
  end
end

#Low savings type decorator class
class LowSavings
  def initialize(basic_budget)
    @basic_budget = basic_budget
  end

  def generate_budget
    h = Hash.new
    low_priority_savings = @basic_budget.low_savings
    var = @basic_budget.amount * low_priority_savings
    new_amount = @basic_budget.amount - var
    savings_type_name = 'low'

    get_budget_category = @basic_budget.budget_category
    get_budget_percentage = @basic_budget.budget_category_percentage

    get_budget_category.each_with_index do |expense_item, expense_index|
      percentage_for_budget_item = get_budget_percentage[expense_index]
      calculated_budget_for_item = new_amount.to_f * percentage_for_budget_item.to_f
      h.store("#{expense_item}".to_s, calculated_budget_for_item.to_f.round(2))
    end

   h
  end
end

#budget = BasicBudget.new(3000)
# budget = AggressiveSavings.new(budget)
#
#puts budget.generate_budget
