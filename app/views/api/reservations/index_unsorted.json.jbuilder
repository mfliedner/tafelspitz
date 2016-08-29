unless @reservation_items.empty?
    json.reservation_items do
      @reservation_items.each { |item| json.set! item[:id], item }
    end
end
