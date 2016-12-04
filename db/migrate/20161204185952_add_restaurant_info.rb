class AddRestaurantInfo < ActiveRecord::Migration
  def change
    add_column :restaurants, :mailto, :string
    add_column :restaurants, :website, :string
  end
end
