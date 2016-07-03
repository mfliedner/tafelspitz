class ChangeTimeFormat < ActiveRecord::Migration
  def change
    remove_column :restaurants, :opening
    add_column :restaurants, :opening, :integer
    remove_column :restaurants, :closing
    add_column :restaurants, :closing, :integer
  end
end
