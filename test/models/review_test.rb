# == Schema Information
#
# Table name: reviews
#
#  id            :integer          not null, primary key
#  user_id       :integer          not null
#  restaurant_id :integer          not null
#  date          :datetime         not null
#  rating        :integer          not null
#  rate_food     :integer
#  rate_ambience :integer
#  rate_service  :integer
#  rate_value    :integer
#  body          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  nick_name     :string
#

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
