class BudgetplannerController < ApplicationController
  
require 'budgetGenerator'
   
def index
    @receipt = Receipt.new
end

def generateBudget
@budgetname = params[:budgetname]
@budgetamount = params[:budgetamount]

@budget = BasicBudget.new(@budgetamount)
@budget = LowSavings.new(budget)

@ans = @budget.generate_budget

@result = "there is something" + @ans.to_s


    if @ans.nil?
      @result = "nothing dey oh!!" + @ans
    end

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