# == Schema Information
#
# Table name: restaurants
#
#  id          :integer          not null, primary key
#  owner_id    :integer          not null
#  description :text             not null
#  name        :string           not null
#  address     :string           not null
#  price_range :integer          not null
#  lat         :float
#  lng         :float
#  seats       :integer
#  img_url     :string
#  phone       :string
#  menu        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  opening     :integer
#  closing     :integer
#  mailto      :string
#  website     :string
#

require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
