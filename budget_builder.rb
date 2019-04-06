# gets value from a percentage puts 850 * 0.25

def budget_builder(amount, savings_type)

# aggressive mode - 1
# medium mode - 2
# low mode - 3

#priority percentage level for aggresive - 20% savings
#priority percentage level for medium - 13% savings
#priority percentage level for low - 5% savings
  
#use patterns for each budget building strategy

  if savings_type == 1
    aggressive_priority_savings = 0.20
    var = amount * aggressive_priority_savings
    new_amount = amount - var
    savings_type_name = 'aggressive'
  end

  if savings_type == 2
    medium_priority_savings = 0.13
    var = amount * medium_priority_savings
    new_amount = amount - var
    savings_type_name = 'medium'
  end

  if savings_type == 3
    low_priority_savings = 0.05
    var = amount * low_priority_savings
    new_amount = amount - var
    savings_type_name = 'low'
  end


  #budegt category with common expenses
  #   #budget_category_array { Home_Rent, Utilities, Food_Groceries, Departmental, Entertainment, Car_Auto, Insurance_Medical, Misc_One-time}

  budget_generated = ['']

  budget_category_array = ["Home_Rent", "Utilities", "Food_Groceries", "Departmental", "Entertainment", "Car_Auto", "Insurance_Medical", "Misc"]
  budget_category_percentage_array = [0.30, 0.25, 0.15, 0.10, 0.04, 0.06, 0.07, 0.03]

#loop through array with index and calculate budget for each expense

  budget_category_array.each_with_index do |expense_item, expense_index|

    percentage_for_budget_item = budget_category_percentage_array[expense_index]

    calculated_budget_for_item = new_amount.to_f * percentage_for_budget_item.to_f

    budget_generated << "#{expense_item} : " + calculated_budget_for_item.to_s
    
  end
  
   puts budget_generated

   puts 'budget savings type used is ' + savings_type_name.to_s


end

puts budget_builder(35000, 1)
