class RemoveIsLikedFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :is_liked
  end
end
