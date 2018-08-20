class RemoveXFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :x, :float
  end
end
