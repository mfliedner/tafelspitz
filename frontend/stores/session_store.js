"use strict";

const AppDispatcher = require('../dispatcher/dispatcher.js');
const Store = require('flux/utils').Store;
const SessionConstants = require('../constants/session_constants');
const FavoriteConstants = require('../constants/favorite_constants');

const SessionStore = new Store(AppDispatcher);

let _currentUser = {};
// _currentUser.favorite_restaurants = [];
let _currentUserHasBeenFetched = false;

const _login = function(currentUser) {
  _currentUser = currentUser;
  _currentUserHasBeenFetched = true;
};

const _logout = function() {
  _currentUser = {};
  _currentUserHasBeenFetched = true;
};

const _addFavorite = function(restaurantId) {
  _currentUser.favorite_restaurants.push(parseInt(restaurantId));
};

const _removeFavorite = function(restaurantId) {
  const restaurantIdx = _currentUser.favorite_restaurants.indexOf(parseInt(restaurantId));
  _currentUser.favorite_restaurants.splice(restaurantIdx, 1);
};

SessionStore.__onDispatch = payload => {
  switch(payload.actionType) {
    case SessionConstants.LOGIN:
      _login(payload.currentUser);
      break;
    case SessionConstants.LOGOUT:
    	_logout();
      break;
    case FavoriteConstants.FAVORITE_RECEIVED:
      _addFavorite(payload.favorite.restaurantId);
      SessionStore.__emitChange();
      break;
    case FavoriteConstants.FAVORITE_REMOVED:
      _removeFavorite(payload.favorite.restaurantId);
      SessionStore.__emitChange();
      break;
  }
  SessionStore.__emitChange();
};

SessionStore.currentUser = function() {
  return Object.assign({}, _currentUser);
};

SessionStore.currentUserHasBeenFetched = function () {
  return !!_currentUserHasBeenFetched;
};

SessionStore.isUserLoggedIn = function() {
  return !!_currentUser.id;
};

module.exports = SessionStore;
