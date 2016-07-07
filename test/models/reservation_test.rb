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

require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
