class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :tripname
      t.string :tripbudget
      t.string :tripdate
      t.string :travel_duration
      t.string :travel_mode
      t.string :trip_location

      t.timestamps
    end
  end
end
