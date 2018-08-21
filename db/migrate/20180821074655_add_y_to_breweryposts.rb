class AddYToBreweryposts < ActiveRecord::Migration
  def change
    add_column :breweryposts, :y, :float
  end
end
