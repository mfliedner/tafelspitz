class ChangeTimeValidation < ActiveRecord::Migration
  def change
    change_column :reservations, :time, :integer, :null => false
  end
end
