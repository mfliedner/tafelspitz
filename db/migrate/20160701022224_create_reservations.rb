class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :guest_id, null: false
      t.integer :restaurant_id, null: false
      t.datetime :date, null: false
      t.time :time, null: false
      t.integer :guest_count, null: false
      t.text :requests

      t.timestamps null: false
    end
    add_index :reservations, :guest_id
    add_index :reservations, :restaurant_id
  end
end
