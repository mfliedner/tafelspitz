"use strict";

const AppDispatcher = require('../dispatcher/dispatcher');
const FilterConstants = require('../constants/filter_constants');

const FilterActions = {
  updateBounds(bounds) {
    AppDispatcher.dispatch({
      actionType: FilterConstants.UPDATE_BOUNDS,
      bounds: bounds
    });
  },

  clearFilters() {
    AppDispatcher.dispatch({
      actionType: FilterConstants.CLEAR_FILTERS
    });
  }
};

module.exports = FilterActions;
