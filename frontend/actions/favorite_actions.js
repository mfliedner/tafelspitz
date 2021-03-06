"use strict";

const FavoriteApiUtil = require('../util/favorite_api_util');
const FavoriteConstants = require('../constants/favorite_constants');
const AppDispatcher = require('../dispatcher/dispatcher');

const FavoriteActions = {
  createFavorite(data) {
    FavoriteApiUtil.createFavorite(data, FavoriteActions.receiveFavorite);
  },

  deleteFavorite(data) {
    FavoriteApiUtil.deleteFavorite(data, FavoriteActions.removeFavorite);
  },

  receiveFavorite(favorite) {
    AppDispatcher.dispatch({
      actionType: FavoriteConstants.FAVORITE_RECEIVED,
      favorite: favorite
    });
  },

  removeFavorite(favorite) {
    AppDispatcher.dispatch({
      actionType: FavoriteConstants.FAVORITE_REMOVED,
      favorite: favorite
    });
  }
};

module.exports = FavoriteActions;
