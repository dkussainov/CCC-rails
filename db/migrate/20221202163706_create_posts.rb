class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :image_url
      t.string :description
      t.boolean :is_liked

      t.timestamps
    end
  end
end
