"use strict";

const Store = require('flux/utils').Store;
const RestaurantConstants = require('../constants/restaurant_constants');
const AppDispatcher = require('../dispatcher/dispatcher');
const RestaurantStore = new Store(AppDispatcher);

let _restaurants = {};

RestaurantStore.all = function() {
  return Object.assign({}, _restaurants);
};

RestaurantStore.find = function(id) {
  return Object.assign({}, _restaurants[id]);
};

function resetAllRestaurants(restaurants) {
  _restaurants = restaurants;
  RestaurantStore.__emitChange();
}

function resetSingleRestaurant(restaurant) {
  _restaurants[restaurant.id] = restaurant;
  RestaurantStore.__emitChange();
}

RestaurantStore.__onDispatch = function(payload) {
  switch(payload.actionType) {
    case RestaurantConstants.RESTAURANTS_RECEIVED:
      resetAllRestaurants(payload.restaurants);
      break;
    case RestaurantConstants.RESTAURANT_RECEIVED:
      resetSingleRestaurant(payload.restaurant);
      break;
  }
};

module.exports = RestaurantStore;
