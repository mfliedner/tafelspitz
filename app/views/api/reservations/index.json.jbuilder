unless @reservation_items.empty?
    json.reservation_items @reservation_items do |reservation_item|
      json.id reservation_item[:id]
      json.guest_count reservation_item[:guest_count]
      json.date reservation_item[:date]
      json.time reservation_item[:time]
      json.request reservation_item[:request]
      json.restaurant_id reservation_item[:restaurant_id]
      json.name reservation_item[:name]
      json.img_url reservation_item[:img_url]
    end
end
