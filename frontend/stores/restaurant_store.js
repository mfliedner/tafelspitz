"use strict";

const Store = require('flux/utils').Store;
const RestaurantConstants = require('../constants/restaurant_constants');
const FavoriteConstants = require('../constants/favorite_constants.js');
const AppDispatcher = require('../dispatcher/dispatcher');
const RestaurantStore = new Store(AppDispatcher);

let _restaurants = {};

RestaurantStore.all = function() {
  return Object.assign({}, _restaurants);
};

RestaurantStore.find = function(id) {
  return Object.assign({}, _restaurants[id]);
};

function addFavorite(restaurantId, userId) {
  _restaurants[restaurantId].fans.push(parseInt(userId));
  RestaurantStore.__emitChange();
};

function removeFavorite(restaurantId, userId) {
  const userIdx = _restaurants[restaurantId].fans.indexOf(parseInt(userId));
  _restaurants[restaurantId].fans.splice(userIdx, 1);
  RestaurantStore.__emitChange();
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
    case FavoriteConstants.FAVORITE_RECEIVED:
      addFavorite(payload.favorite.restaurantId, payload.favorite.userId);
      break;
    case FavoriteConstants.FAVORITE_REMOVED:
      removeFavorite(payload.favorite.restaurantId, payload.favorite.userId);
      break;
  }
};

module.exports = RestaurantStore;
