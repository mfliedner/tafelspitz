json.extract! restaurant, :id, :name, :description, :lat, :lng,
  :img_url, :price_range, :address, :phone, :menu

json.fans restaurant.fans.map(&:id)
