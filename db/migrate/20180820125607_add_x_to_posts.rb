class AddXToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :x, :float
    remove_column :posts, :x, :float
  end
end
