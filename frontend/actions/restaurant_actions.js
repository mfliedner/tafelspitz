"use strict";

const AppDispatcher = require('../dispatcher/dispatcher');
const RestaurantConstants = require('../constants/restaurant_constants');
const RestaurantApiUtil = require('../util/restaurant_api_util');

const RestaurantActions = {
  fetchAllRestaurants(filters) {
    RestaurantApiUtil.fetchAllRestaurants(filters, RestaurantActions.receiveAllRestaurants);
  },
  createRestaurant(restaurant){
    RestaurantApiUtil.createRestaurant(restaurant, RestaurantActions.receiveSingleRestaurant);
  },

  receiveAllRestaurants(restaurants) {
    AppDispatcher.dispatch({
      actionType: RestaurantConstants.RESTAURANTS_RECEIVED,
      restaurants: restaurants
    });
  },
  receiveSingleRestaurant(restaurant) {
    AppDispatcher.dispatch({
      actionType: RestaurantConstants.RESTAURANT_RECEIVED,
      restaurant: restaurant
    });
  }
};

module.exports = RestaurantActions;
