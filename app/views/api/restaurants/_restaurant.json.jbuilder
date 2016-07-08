json.extract! restaurant, :id, :name, :description, :lat, :lng,
  :img_url, :price_range, :address, :phone, :menu, :average_rating,
  :count_rating

json.fans restaurant.fans.map(&:id)
json.reviews restaurant.reviews.map { |review| review }
