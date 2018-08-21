class AddYToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :y, :float
    remove_column :posts, :y, :float
  end
end
