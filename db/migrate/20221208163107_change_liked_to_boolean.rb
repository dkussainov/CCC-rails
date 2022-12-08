class ChangeLikedToBoolean < ActiveRecord::Migration[7.0]
  def change
    change_column :likes, :liked, :boolean, default: false
  end
end
