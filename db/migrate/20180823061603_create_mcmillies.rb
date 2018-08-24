class CreateMcmillies < ActiveRecord::Migration
  def change
    create_table :mcmillies do |t|
      t.string :email
      t.string :title
      t.text :content
      t.integer :review_count

      t.timestamps null: false
    end
  end
end
