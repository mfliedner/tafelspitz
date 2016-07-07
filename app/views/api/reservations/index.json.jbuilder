unless @reservation_items.empty?
    json.reservation_items @reservation_items do |reservation_item|
      json.id reservation_item[1][:id]
      json.guest_count reservation_item[1][:guest_count]
      json.date reservation_item[1][:date]
      json.time reservation_item[1][:time]
      json.request reservation_item[1][:request]
      json.restaurant_id reservation_item[1][:restaurant_id]
      json.name reservation_item[1][:name]
      json.img_url reservation_item[1][:img_url]
    end
end
