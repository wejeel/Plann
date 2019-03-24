json.extract! receipt, :id, :date, :total, :shopName, :shopAdress, :created_at, :updated_at
json.url receipt_url(receipt, format: :json)
