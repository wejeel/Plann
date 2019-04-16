class LoadDataController < ApplicationController
     before_action :get_user_id

    def index
    end    
    def get_data_from_api
        @user = User.find(current_user.id)
        image = './centra.jpg'
        text        = ReceiptDataExtraction::Extract.call_vision_api(image)
        @shopName   = ReceiptDataExtraction::Specific_data.get_shop_name(text)
        @shopAdress = ReceiptDataExtraction::Specific_data.get_address(text)
        @date       = ReceiptDataExtraction::Specific_data.get_date(text)
        @total      = ReceiptDataExtraction::Specific_data.get_total(text)
        @file = File.new(open('./storage/centra.jpg'))

        #@receipt = @user.receipts.build
        
          @receipt = @user.receipts.build(:date => @date, :total => @total, :shopName => @shopName, :shopAdress => @shopAdress, :image => image)
    
  
        
        
    end 
    def uploadfile
        uploaded_io = params[:file]
        if uploaded_io.present?
            name = User.find(current_user.id) 
            extname = File.extname(uploaded_io.original_filename) 
            File.open(Rails.root.join('storage', name.to_s + extname), 'wb') do |file|
                file.write(uploaded_io.read)
            end
                redirect_to home_index_path	
        end
    end
  

      
    private
    def get_user_id
        @user = User.find(current_user.id)
    end
end
