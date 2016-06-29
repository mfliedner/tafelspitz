"use strict";

const ApiUtil = {
  fetchAllRestaurants(filters, success){
    $.get('api/restaurants', filters, success);
  },
  createRestaurant(data, success){
    $.post('api/restaurants', { restaurant: data }, success);
  },
};

module.exports = ApiUtil;
