json.extract! user, :id, :email, :first_name, :last_name
json.favorite_restaurants user.favorite_restaurants.pluck(:id)
