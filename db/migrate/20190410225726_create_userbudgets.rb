class CreateUserbudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :userbudgets do |t|
      t.string :user_id
      t.string :budget_name
      t.string :savings_type
      t.decimal :budget_amount
      t.decimal :budget_spent
      t.decimal :home_rent
      t.decimal :utilities
      t.decimal :food_groceries
      t.decimal :departmental
      t.decimal :entertainment
      t.decimal :car_auto
      t.decimal :insurance_medical
      t.decimal :misc
      t.timestamps
    end
  end
end
