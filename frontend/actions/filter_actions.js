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

  updateGuests(value) {
    AppDispatcher.dispatch({
      actionType: FilterConstants.UPDATE_GUESTS,
      guests: value
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
      actionType: FilterConstants.USET_FILTER
    });
  }
};

module.exports = FilterActions;
