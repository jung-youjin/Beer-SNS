class RemoveYFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :y, :float
  end
end
