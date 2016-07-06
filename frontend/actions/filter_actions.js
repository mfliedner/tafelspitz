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

  updateTimeSlot(value) {
    AppDispatcher.dispatch({
      actionType: FilterConstants.UPDATE_TIME_SLOT,
      time_slot: value
    });
  },

  updateName(value) {
    AppDispatcher.dispatch({
      actionType: FilterConstants.UPDATE_NAME,
      name: value
    });
  },

  updateDate(value) {
    AppDispatcher.dispatch({
      actionType: FilterConstants.UPDATE_DATE,
      date: value
    });
  },

  updateGuestCount(value) {
    AppDispatcher.dispatch({
      actionType: FilterConstants.UPDATE_GUEST_COUNT,
      guest_count: value
    });
  },

  clearFilters() {
    AppDispatcher.dispatch({
      actionType: FilterConstants.CLEAR_FILTERS
    });
  },

  setFilter() {
    AppDispatcher.dispatch({
      actionType: FilterConstants.SET_FILTER
    });
  },

  unsetFilter() {
    AppDispatcher.dispatch({
      actionType: FilterConstants.UNSET_FILTER
    });
  }
};

module.exports = FilterActions;
