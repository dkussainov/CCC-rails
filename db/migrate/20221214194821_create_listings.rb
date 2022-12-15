class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :address
      t.string :city
      t.integer :bedroom
      t.integer :bathroom
      t.string :description
      t.string :amenities
      t.float :price
      t.string :duration
      t.string :image

      t.timestamps
    end
  end
end
