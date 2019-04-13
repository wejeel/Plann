module ReceiptDataExtraction
    Name_reg = /\n/
    
    #12/11/2010 or 11 jan 2011 or 12 JAN 2011 or 12 Jan 2011
    month_1 = "(J|j)an|(F|f)eb|(M|m)ar|(A|a)pr|(M|m)ay|(J|j)un|(J|j)ul|(A|a)ug|(S|s)ep|(O|o)ct|(N|n)ov|(D|d)ec"
    month_2 = "JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC"
    Date_reg = /(\s(?<day>(\d{1,2}))(\s|\/|\-)(?<month>((\d+)|(#{month_1})|(#{month_2})))(\s|\/|\-)(?<year>(\d{2,4}))\s+)/
    
    #Qty | Name | Price | Total
    quantity = /(?<qtde>(\d+))/
    item_name = /(?<name_product>(.*?))/
    price = /(€|EUR)?(?<price>(\d{1,3}\,)*\d{1,3}\.\d{2})/
    price_total = /(?<price_total>(\d{1,3}\,)*\d{1,3}\.\d{2})/
    Product_reg = /((#{quantity})\s+)?#{item_name}\s*#{price}(\s*#{price_total})?/
    
    Negative_values = /(€|EUR)?\-(?<price>(\d{1,3}\,)*\d{1,3}\.\d{2})/
    Total_reg = /(\s*(\btotal\b)|(\bTotal\b)|(\bTOTAL\b))\D*\s*(?<amount>(\d{1,3}\,)*\d{1,3}\.\d{2})/
    Clean_text = /.*?(?=#{Total_reg})/
end