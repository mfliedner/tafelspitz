class AddRestaurantContact < ActiveRecord::Migration
  def change
    add_column :restaurants, :contact, :string
  end
end
