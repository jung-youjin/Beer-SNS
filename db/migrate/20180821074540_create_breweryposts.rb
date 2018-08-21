class CreateBreweryposts < ActiveRecord::Migration
  def change
    create_table :breweryposts do |t|
      t.text :name
      t.text :tab
      t.text :bottlebeer
      t.string :storeimage
      t.string :menuimage
      t.text :event

      t.timestamps null: false
    end
  end
end
