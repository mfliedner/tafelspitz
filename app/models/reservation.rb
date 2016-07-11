# == Schema Information
#
# Table name: reservations
#
#  id            :integer          not null, primary key
#  guest_id      :integer          not null
#  restaurant_id :integer          not null
#  date          :datetime         not null
#  guest_count   :integer          not null
#  requests      :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  time          :integer          not null
#

class Reservation < ActiveRecord::Base
  validates :guest_id, :restaurant_id, :date, :time, :guest_count, presence: true
  belongs_to :user,
    foreign_key: :guest_id,
    primary_key: :id,
    class_name: "User"
  belongs_to :restaurant

  def self.time_slot_to_time(time_slot)
    # half-hour time slots, time is time of day in seconds
    time_slot * 30 * 60
  end

  def available?
    return false if self.restaurant.opening > self.time
    return false if self.restaurant.closing < self.time
    return false if self.restaurant.seats < self.guest_count
    true
  end
end
