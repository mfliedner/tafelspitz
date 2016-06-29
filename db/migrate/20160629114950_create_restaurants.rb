class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.integer :owner_id, null: false
      t.text :description, null: false
      t.string :name, null: false
      t.string :address, null: false
      t.integer :price_range, null: false
      t.float :lat
      t.float :lng
      t.time :opening
      t.time :closing
      t.integer :seats
      t.string :img_url
      t.string :phone
      t.text :menu

      t.timestamps null: false
    end
    add_index :restaurants, :owner_id
  end
end
