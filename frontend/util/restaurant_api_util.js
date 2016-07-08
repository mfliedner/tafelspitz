"use strict";

const RestaurantApiUtil = {
  fetchAllRestaurants(filters, success){
    $.get('api/restaurants', filters, success);
  },

  fetchSingleRestaurant(id, success){
    $.get(`api/restaurants/${id}`, success);
  },

  createRestaurant(data, success){
    $.post('api/restaurants', { restaurant: data }, success);
  }
};

module.exports = RestaurantApiUtil;
