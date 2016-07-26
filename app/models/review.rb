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

class Review < ActiveRecord::Base
  validates :user_id, :restaurant_id, :date, presence: true
  validates :rating, inclusion: { in: (1..5) }, presence: true
  validates :rate_food, :rate_ambience, :rate_service, :rate_value, inclusion: { in: (0..5) }

  belongs_to :restaurant
	belongs_to :user
end
