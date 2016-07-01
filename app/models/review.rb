class Review < ActiveRecord::Base
  validates :user_id, :restaurant_id, presence: true
  validates :rating, inclusion: { in: (1..5) }, presence: true
  validates :rate_food, :rate_ambience, :rate_service, :rate_value, inclusion: { in: (1..5) }

  belongs_to :restaurant
	belongs_to :user
end
