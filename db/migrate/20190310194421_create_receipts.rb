class CreateReceipts < ActiveRecord::Migration[5.2]
  def change
    create_table :receipts do |t|
      t.string :date
      t.decimal :total
      t.string :shopName
      t.string :shopAdress

      t.timestamps
    end
  end
end
