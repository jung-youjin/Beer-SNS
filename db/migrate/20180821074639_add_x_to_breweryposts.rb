class AddXToBreweryposts < ActiveRecord::Migration
  def change
    add_column :breweryposts, :x, :float
  end
end
