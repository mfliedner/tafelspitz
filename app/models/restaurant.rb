class Restaurant < ActiveRecord::Base
  validates :description, :name, :owner_id, :price_range, :address, presence: true
  validates :price_range, inclusion: { in: (1..4) }
  belongs_to :user,
    foreign_key: :owner_id,
    primary_key: :id,
    class_name: "User"

  def self.in_bounds(bounds)
    self.where("lat < ?", bounds[:northEast][:lat])
        .where("lat > ?", bounds[:southWest][:lat])
        .where("lng > ?", bounds[:southWest][:lng])
        .where("lng < ?", bounds[:northEast][:lng])
  end
end
