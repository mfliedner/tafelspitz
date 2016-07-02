class Favorite < ActiveRecord::Base
  validates :user_id, restaurant_id, presence: true
  # validates :user_id, uniqueness: {scope: :restaurant_id}

	belongs_to :restaurant
	belongs_to :user
end
