"use strict";

const AppDispatcher = require('../dispatcher/dispatcher');
const Store = require('flux/utils').Store;
const FilterConstants = require('../constants/filter_constants');
const moment = require('moment');

let _params = { time_slot: FilterConstants.DEFAULT_TIME_SLOT,
                date: moment().format('ll'),
                guest_count: FilterConstants.DEFAULT_GUEST_COUNT,
                name: "", favorites: false, filter: false };
const FilterParamsStore = new Store(AppDispatcher);

FilterParamsStore.params = function() {
  return Object.assign({}, _params);
};

function setBounds(bounds) {
  _params.bounds = bounds;
};

function setName(name) {
  _params.name = name;
};

function setTimeSlot(time_slot) {
  _params.time_slot = time_slot;
};

function setDate(date) {
  _params.date = date;
};

function setGuestCount(guest_count) {
  _params.guest_count = guest_count;
};

function clearFilters(){
  _params = { time_slot: FilterConstants.DEFAULT_TIME_SLOT,
                  date: moment().format('ll'),
                  guest_count: FilterConstants.DEFAULT_GUEST_COUNT,
                  name: "", favorites: false, filter: false };
};

function filterFavorites(){
  _params = { time_slot: FilterConstants.DEFAULT_TIME_SLOT,
                  date: moment().format('ll'),
                  guest_count: FilterConstants.DEFAULT_GUEST_COUNT,
                  name: "", favorites: true, filter: false };
};

function setFilter(){
  _params.filter = true;
};

function unsetFilter(){
  _params.filter = false;
};

FilterParamsStore.__onDispatch = function(payload) {
  switch(payload.actionType){
    case FilterConstants.UPDATE_BOUNDS:
      setBounds(payload.bounds);
      break;
    case FilterConstants.UPDATE_NAME:
      setName(payload.name);
      break;
    case FilterConstants.UPDATE_TIME_SLOT:
      setTimeSlot(payload.time_slot);
      break;
    case FilterConstants.UPDATE_DATE:
      setDate(payload.date);
      break;
    case FilterConstants.UPDATE_GUEST_COUNT:
      setGuestCount(payload.guest_count);
      break;
    case FilterConstants.CLEAR_FILTERS:
      clearFilters();
      break;
    case FilterConstants.FILTER_FAVORITES:
      filterFavorites();
      break;
    case FilterConstants.SET_FILTER:
      setFilter();
      break;
    case FilterConstants.UNSET_FILTER:
      unsetFilter();
      break;
  }
  FilterParamsStore.__emitChange();
};

module.exports = FilterParamsStore;
