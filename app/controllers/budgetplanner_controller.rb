class BudgetplannerController < ApplicationController
def index
end

def create
   @budget = Budgetplanner.new(user_params)   
  
    respond_to do |format|   
      if @budget.save   
        format.html { redirect_to users_url, notice: 'Budget was saved successfully created.' }   
        format.json { render :show, status: :created, location: @user }   
      else   
        format.html { render :new }   
        format.json { render json: @user.errors, status: :unprocessable_entity }   
      end   
    end      
end

end