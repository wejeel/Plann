class HomeController < ApplicationController
  require 'receipt_data_extraction'
  def index
        @user = User.find(current_user.id)
  end
end
