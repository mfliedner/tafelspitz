class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :restaurant_id, null: false
      t.datetime :date, null: false
      t.integer :rating, null: false
      t.integer :rate_food
      t.integer :rate_ambience
      t.integer :rate_service
      t.integer :rate_value
      t.text :body

      t.timestamps null: false
    end
    add_index :reviews, :user_id
    add_index :reviews, :restaurant_id
  end
end
