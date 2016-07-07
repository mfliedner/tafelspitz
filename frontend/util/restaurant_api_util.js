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
  },

  createReview(id, review, success) {
    $.post(`api/restaurants/${id}/reviews`, { review }, success);
  }
};

module.exports = RestaurantApiUtil;
