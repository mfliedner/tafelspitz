class Restaurant < ActiveRecord::Base
  validates :description, :name, :owner_id, :price_range, :address, presence: true
  validates :price_range, inclusion: { in: (1..4) }
  belongs_to :user,
    foreign_key: :owner_id,
    primary_key: :id,
    class_name: "User"
end
