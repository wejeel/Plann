class HomeController < ApplicationController
  require 'receipt_data_extraction'
  def index
        if user_signed_in?
           @user = User.find(current_user.id) 
      end  
  end
end
