class UploadsController < ApplicationController

before_action :authenticate_user!

=begin  
def index
  @receipt = Receipt.find(params[:receipt_id])
  @upload = @receipt.upload
end
=end

def new
  @receipt = Receipt.find(params[:receipt_id])
  @upload = @receipt.upload
  if @upload == nil
    @upload = @receipt.build_upload()
  else
    respond_to do |format|
      @user = User.find(current_user.id)
        format.html { redirect_to receipt_upload_url(@receipt, @upload),
        notice: 'You can only have one upload' }
        format.json { render :show, status: :created,
        location: @upload }
      end
  end
end

def create
  @receipt = Receipt.find(params[:receipt_id])
  @upload = @receipt.build_upload(upload_params)
  respond_to do |format|
    if @upload.save
      format.html { redirect_to receipt_upload_url(@receipt, @upload),
      notice: 'Upload was successfully created.' }
      format.json { render :show, status: :created,
      location: @upload }
    else
      format.html { render :new }
      format.json { render json: @upload.errors,
      status: :unprocessable_entity }
    end
  end
end

def show
  @user = User.find(current_user.id)
  @receipt = Receipt.find(params[:receipt_id])
  @upload = @receipt.upload
end

def edit
  @receipt = Receipt.find(params[:receipt_id])
  @upload = @receipt.upload
end

def update
  @receipt = Receipt.find(params[:receipt_id])
  @upload = @receipt.upload
  respond_to do |format|
    if @upload.update(upload_params)
      format.html { redirect_to receipt_upload_url(@receipt, @upload),
      notice: 'Upload was successfully updated.' }
      format.json { render :show, status: :ok, location: @upload }
    else
      format.html { render :edit }
      format.json { render json: @upload.errors,
      status: :unprocessable_entity }
    end
  end
end

def destroy
  @receipt = Receipt.find(params[:receipt_id])
  @upload = @receipt.upload
  @upload.destroy
  respond_to do |format|
    format.html { redirect_to receipt_uploads_url(@receipt),
      notice: 'Upload was successfully destroyed.' }
      format.json { head :no_content }
    end
end

private
  def upload_params
      params.require(:upload).permit(:image)
  end
end
