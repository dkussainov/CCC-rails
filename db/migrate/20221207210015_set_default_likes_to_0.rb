class SetDefaultLikesTo0 < ActiveRecord::Migration[7.0]
  def change
    change_column :likes, :likes_num, :integer, :default => 0
  end
end
