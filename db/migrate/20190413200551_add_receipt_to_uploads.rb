class AddReceiptToUploads < ActiveRecord::Migration[5.2]
  def change
    add_reference :uploads, :receipt, foreign_key: true
  end
end
