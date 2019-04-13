class ProductsController < ApplicationController
  
   before_action :authenticate_user!
  
  # Get the recept with id=1
  def index
    @receipt = Receipt.find(params[:receipt_id])
    @products = @receipt.products
  end

  def show
    @receipt = Receipt.find(params[:receipt_id])
    @product = @receipt.products.find(params[:id])
  end

  def new
    @receipt = Receipt.find(params[:receipt_id])
    @product = @receipt.products.build
  end
  
  def create
    @receipt = Receipt.find(params[:receipt_id])
    @product = @receipt.products.build(params.require(:product).permit(:productName, :category, :unitPrice, :quantity, :totalPrice))
    if @receipt.save
      redirect_to receipt_product_url(@receipt, @product)
    else
      render :action => "new"
    end
  end

  def edit
    @user = User.find(current_user.id)
    @receipt = Receipt.find(params[:receipt_id])
    @product = @receipt.products.find(params[:id])
  end
  
  def update
    @receipt = Receipt.find(params[:receipt_id])
    @product = Product.find(params[:id])
    
    if @product.update_attributes(params.require(:product).permit(:productName, :category, :unitPrice, :quantity, :totalPrice))
      redirect_to receipt_product_url(@receipt, @product)
      
    else
      render :action => "edit"
    end  
  end
end
