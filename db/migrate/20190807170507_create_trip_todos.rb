class CreateTripTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_todos do |t|

      t.timestamps
    end
  end
end
