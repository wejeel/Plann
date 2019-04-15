class BudgetplannerController < ApplicationController
  before_action :authenticate_user!
require 'budgetGenerator'
   
def index
  #before_filter :authenticate_user!, only: [:new, :edit, :update, :destroy]
  
    @receipt = Receipt.new
end

def generateBudget
@budgetname = params[:budgetname]
@budgetamount = params[:budgetamount]
@savings_type = params[:savings_type]

budget = BasicBudget.new(@budgetamount)

if @savings_type == 1.to_s
  @savings_type = "Basic savings"
end


if @savings_type == 2.to_s
  budget = LowSavings.new(budget) 
  @savings_type = "Low savings"
end

if @savings_type == 3.to_s
  budget = MediumSavings.new(budget)
  @savings_type = "Medium savings"
end

if @savings_type == 4.to_s
  budget = AggressiveSavings.new(budget) 
  @savings_type = "Aggresive savings"
end

@mybudget = budget.generate_budget


 #Userbudget.delete_all
 
# @budgetlist = Userbudget.find_by(user_id: current_user.email)
# @budgetlist.destroy
   
    #new_dollars = params[:updatedFunds]
    
    @update_budget = Userbudget.new
    @update_budget.user_id = current_user.email
    @update_budget.budget_name = @budgetname
    @update_budget.budget_amount = @budgetamount.to_f
    @update_budget.savings_type = @savings_type
    @update_budget.budget_spent = 0
    
    @update_budget.home_rent = @mybudget['Home_Rent'].to_f
    @update_budget.utilities = @mybudget['Utilities'].to_f
    @update_budget.food_groceries = @mybudget['Food_Groceries'].to_f
    @update_budget.departmental = @mybudget['Departmental'].to_f
    @update_budget.entertainment = @mybudget['Entertainment'].to_f
    @update_budget.car_auto = @mybudget['Car_Auto'].to_f
    @update_budget.insurance_medical = @mybudget['Insurance_Medical'].to_f
    @update_budget.misc = @mybudget['Misc'].to_f

  #store to database!
   @update_budget.save
   
end


# def create
#   @budget = Budgetplanner.new(budget_params)   
  
#     respond_to do |format|   
#       if @budget.save   
#         format.html { redirect_to users_url, notice: 'Budget was saved successfully created.' }   
#         format.json { render :show, status: :created, location: @user }   
#       else   
#         format.html { render :new }   
#         format.json { render json: @user.errors, status: :unprocessable_entity }   
#       end   
#     end      
# end



end