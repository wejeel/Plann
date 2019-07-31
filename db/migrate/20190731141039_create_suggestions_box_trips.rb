class CreateSuggestionsBoxTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :suggestions_box_trips do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :rating

      t.timestamps
    end
  end
end
