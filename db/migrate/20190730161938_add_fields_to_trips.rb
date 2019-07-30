class AddFieldsToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :trip_owner, :string
  end
end
