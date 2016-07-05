class ChangeReservationFormat < ActiveRecord::Migration
  def change
    remove_column :reservations, :time
    add_column :reservations, :time, :integer
  end
end
