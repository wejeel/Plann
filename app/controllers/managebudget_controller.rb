class ManagebudgetController < ApplicationController
     before_action :authenticate_user!
    
    
def index
    
    

@mybudget = Userbudget.find_by(user_id: current_user.email)

@is_found = false

if @mybudget
    
    @is_found = true
    
    @budget_name = @mybudget.budget_name
    @savings_type = @mybudget.savings_type
    @budget_amount = @mybudget.budget_amount
    @home_rent = @mybudget.home_rent
    @utilities = @mybudget.utilities
    @food_groceries = @mybudget.food_groceries
    @departmental = @mybudget.departmental
    @entertainment = @mybudget.entertainment
    @car_auto = @mybudget.car_auto
    @insurance_medical = @mybudget.insurance_medical
    @misc = @mybudget.misc
end

    

    
end
end
