require "reg_exp"
require "google/cloud/vision"

module ReceiptDataExtraction
    class Extract
    
      def self.call_vision_api(image)
          image_annotator = Google::Cloud::Vision::ImageAnnotator.new
          response = image_annotator.text_detection(
              image: image,
              max_results: 1 # optional, defaults to 10
          )
          text_detected = ""
          response.responses.each do |res|
              text_detected << res.text_annotations[0].description
          end
        return text_detected
      end 
    end
  
    class Specific_data  
        def self.get_shop_name(text)
            shop_name = text.split(Name_reg).first
            text = text.sub!(shop_name, "")
          return shop_name
        end  
    
        def self.get_address(text)
            address = text.split(Name_reg)[1]
            text = text.sub!(address,"")
            address2 = text.split(Name_reg)[2]
            address = address + " " + address2
          return address
        end   
    
        def self.get_date(text)
            date = text.match(Date_reg)
            date = Date.parse(date[0]).strftime("%d/%m/%Y")
          return date
        end 
        
        def self.get_total(text)
            total = 0.00 
            text.scan(Total_reg) do |amount|
                if total < amount[0].to_f
                    total = amount[0].to_f
                end
            end 
          return total
        end    
        
        def self.get_products(text)
            text.scan(Product_reg) do |qtde, name_product, price, price_total|
                if (name_product != "") && (price != nil)
                    if qtde != nil
                        puts "-qtde: #{qtde}" 
                    end    
                        puts "-name_product: #{name_product}"
                        puts "Price: #{price}"
                    if price_total != nil
                        puts "Price_Total: #{price_total}"
                    end    
                end
            end    
        end
        
        def self.get_data_before_total(text)
            text =  text.split(Clean_text)[0]
          return text
        end  
        
        #remove all discounts/cancellations
        def remove_neg_values(text)
            text = text.gsub(Negative_values, "")
          return text
        end  
    end        
end

#text_detected = ReceiptDataExtraction::Extract.call_vision_api('../spar.jpg')





