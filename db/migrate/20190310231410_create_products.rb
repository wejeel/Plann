class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :productName
      t.string :category
      t.decimal :unitPrice
      t.integer :quantity
      t.decimal :totalPrice
      t.references :receipt, foreign_key: true

      t.timestamps
    end
  end
end
