class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.string :budgetname
      t.integer :budgetamount
      t.timestamps
    end
  end
end
