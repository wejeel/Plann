class AddUploadToReceipt < ActiveRecord::Migration[5.2]
  def change
    add_column :receipts, :upload_id, :integer
  end
end
