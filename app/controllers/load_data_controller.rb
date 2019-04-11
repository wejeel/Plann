class LoadDataController < ApplicationController
     before_action :get_user_id
    def index
    end    
    def get_data_from_api
        @user = User.find(current_user.id)
        text =  "fresh\nTHE GOOD FOOD MARKET\nMayor Street, I.F.S.C.,\nDublin 1.\nTel : 6720977\nFor the best DELI in town\n20 Mar 2019\n3-2816992\n20:51\nCashier : Mario Sergio\nQty Item\nPrice € Total\n1 WICKLOW WOLF INDIA P 4.35 4.35\n16 STELLA CAN 24PK 4.8 2.00 32.00\n1 *LOYALTY (WICKLOW WOL -0.87 -0.87\n2 *LOYALTY (STELLA CAN -0.60\n-1.20\n1 *LOYALTY (STELLA CAN -3.60 -3.60\n*********** MULTIBUY SAVINGS ***********\n4 STELLA 4 FOR €6\n-8.00\n*** TOTAL MULTIBUY ***\n-8.00\nTOTAL SALE €\n22.68\nCredit Card\nCHANGE €\n22.68\n0.00\nNo. of sold items\n17\nCustomer: RUAN DIEGO Goncalves Pizzi\nPoints Balance: 0\nSpend Balance: 0.00\nPoints Earned: 22.68\nRATE\nNETT\nVAT\n23.00 %\n18.44\n4.24\nTotal\n18.44\n4.24\nThank you for you custom\nOpen 7 Days a week, Early till Late\nFull LOTTO Available\n"
        @shopName   = ReceiptDataExtraction::Specific_data.get_shop_name(text)
        @shopAdress = ReceiptDataExtraction::Specific_data.get_address(text)
        @date       = ReceiptDataExtraction::Specific_data.get_date(text)
        @total      = ReceiptDataExtraction::Specific_data.get_total(text)
        @image      = "URL"
        @receipt = @user.receipts.build
   end 
    def uploadfile
        
    end       
   private
   def get_user_id
       @user = User.find(current_user.id)
    end
end
