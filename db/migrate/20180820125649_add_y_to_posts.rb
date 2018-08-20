class AddYToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :y, :float
  end
end
