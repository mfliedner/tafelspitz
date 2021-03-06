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
  FilterParamsStore.__emitChange();
};

function setName(name) {
  _params.name = name;
  FilterParamsStore.__emitChange();
};

function setTimeSlot(time_slot) {
  _params.time_slot = time_slot;
  FilterParamsStore.__emitChange();
};

function setDate(date) {
  _params.date = date;
  FilterParamsStore.__emitChange();
};

function setGuestCount(guest_count) {
  _params.guest_count = guest_count;
  FilterParamsStore.__emitChange();
};

function clearFilters(){
  _params = { time_slot: FilterConstants.DEFAULT_TIME_SLOT,
                  date: moment().format('ll'),
                  guest_count: FilterConstants.DEFAULT_GUEST_COUNT,
                  name: "", favorites: false, filter: false };
  FilterParamsStore.__emitChange();
};

function filterFavorites(){
  _params = { time_slot: FilterConstants.DEFAULT_TIME_SLOT,
                  date: moment().format('ll'),
                  guest_count: FilterConstants.DEFAULT_GUEST_COUNT,
                  name: "", favorites: true, filter: false };
  FilterParamsStore.__emitChange();
};

function setFilter(){
  _params.filter = true;
  FilterParamsStore.__emitChange();
};

function unsetFilter(){
  _params.filter = false;
  _params.favorites = false;
  FilterParamsStore.__emitChange();
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
};

module.exports = FilterParamsStore;
