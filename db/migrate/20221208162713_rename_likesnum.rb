class RenameLikesnum < ActiveRecord::Migration[7.0]
  def change
    rename_column :likes, :likes_num, :liked
    #Ex:- :default =>'' 
  end
end
