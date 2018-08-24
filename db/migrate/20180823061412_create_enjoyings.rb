class CreateEnjoyings < ActiveRecord::Migration
  def change
    create_table :enjoyings do |t|
      t.string :email
      t.string :title
      t.text :content
      t.integer :review_count

      t.timestamps null: false
    end
  end
end
