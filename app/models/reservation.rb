class Reservation < ActiveRecord::Base
  validates :guest_id, :restaurant_id, :date, :time, :guest_count, presence: true
  belongs_to :user,
    foreign_key: :guest_id,
    primary_key: :id,
    class_name: "User"
  belongs_to :restaurant

end
