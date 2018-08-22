class CreateBeerdbs < ActiveRecord::Migration
  def change
    create_table :beerdbs do |t|
      t.string :num
      t.string :name
      t.string :brewery
      t.string :style
      t.integer :alcohol
      t.integer :fruit
      t.integer :ibu
      t.string :text
      t.integer :reviews_count

      t.timestamps null: false
    end
  end
end
