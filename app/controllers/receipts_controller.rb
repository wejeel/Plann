class ReceiptsController < ApplicationController
   before_action :authenticate_user!
  before_action :set_receipt, only: [:show, :edit, :update, :destroy]
require 'observer'
  # GET /receipts
  # GET /receipts.json
  include Observable
  def index
    
    
    @user = User.find_by(email: current_user.email)
    @receipts = @user.receipts
    #add_observer(Notifier.new)
    
     @mybudget = Userbudget.find_by(user_id: current_user.email)
    
    if @mybudget 
       
    @budget_amount = @mybudget.budget_amount
    @budget_spent = @mybudget.budget_spent
    @savings_type = @mybudget.savings_type
    
    @get_percentage = (@budget_spent / @budget_amount) * 100

    
    @savings_on_budget = @budget_amount - @budget_spent

    #@budget_spent = @mybudget.budget_spent
    
    if @budget_spent.nil?
      @budget_spent = 0.00
    end
    else
      @budget_amount = 0
    @budget_spent = 0
    @savings_type = "No budget yet"
    end
   
  end

  # GET /receipts/1
  # GET /receipts/1.json
  def show
     @user = User.find(params[:user_id])
     @receipt = @user.receipts.find(params[:id])
  end

  # GET /receipts/new
  def new
    @user = User.find(params[:user_id])
    @receipt = @user.receipts.build
  end
  
  # GET /receipts/1/edit
  def edit
    @user = User.find(params[:user_id])
    @receipt = @user.receipts.find(params[:id])
  end

  # POST /receipts
  # POST /receipts.json
  def create
    @user = User.find(params[:user_id])
    @receipt = @user.receipts.build(params.require(:receipt).permit(:date, :total, :shopName, :shopAdress, :image))
    
    
    @amountdeduct = params[:total];
    
    @mybudget = Userbudget.find_by(user_id: current_user.email)

if @mybudget
  
    @budget_spent_amount = @mybudget.budget_spent.to_f + @amountdeduct.to_f
    
    #@newbudget = @budget_amount.to_f - @amountdeduct.to_f
    
    @mybudget.budget_spent = @budget_spent_amount
    
    @mybudget.save

end
    
    
    if @receipt.save
        redirect_to user_receipt_path(@user, @receipt)
    else
        render :action => "new"
    end
  end

  # PATCH/PUT /receipts/1
  # PATCH/PUT /receipts/1.json
  def update
    @user = User.find(params[:user_id])
    @receipt = Receipt.find(params[:id])
    if @receipt.update_attributes(params.require(:receipt).permit(:date, :total, :shopName, :shopAdress))
      redirect_to user_receipt_url(@user, @receipt)
      else
      render :action => "edit"
    end
  end

  # DELETE /receipts/1
  # DELETE /receipts/1.json
  def destroy
    @user = User.find(params[:user_id])
    @receipt = Receipt.find(params[:id])
    @receipt.destroy
    respond_to do |format|
      format.html { redirect_to user_receipts_path(@user)}
      format.xml { head :ok }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receipt
      @receipt = Receipt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receipt_params
      params.require(:receipt).permit(:date, :total, :shopName, :shopAdress)
    end
end
