class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :completed
      t.integer :order

      t.timestamps
    end
  end
end
