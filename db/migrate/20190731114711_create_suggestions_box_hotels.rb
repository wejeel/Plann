class CreateSuggestionsBoxHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :suggestions_box_hotels do |t|
      t.string :hotel_name
      t.string :pernight
      t.string :decimal
      t.string :country
      t.string :city
      t.integer :rating
      t.string :image
      t.boolean :buffet
      t.boolean :hall
      t.boolean :gym

      t.timestamps
    end
  end
end
