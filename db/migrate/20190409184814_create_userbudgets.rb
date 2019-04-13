class CreateUserbudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :userbudgets do |t|
      t.string :user_id
      t.string :budget_name
      t.string :savings_type
      t.integer :budget_amount
      t.decimal :Home_Rent
      t.decimal :Utilities
      t.decimal :Food_Groceries
      t.decimal :Departmental
      t.decimal :Entertainment
      t.decimal :Car_Auto
      t.decimal :Insurance_Medical
      t.decimal :Misc
      t.timestamps
    end
  end
end
