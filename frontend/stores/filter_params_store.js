"use strict";

const AppDispatcher = require('../dispatcher/dispatcher');
const Store = require('flux/utils').Store;
const FilterConstants = require('../constants/filter_constants');
const moment = require('moment');

let _params = { time_slot: 38, date: moment().format('ll'),
                guests: 2, name: "", filter: false };
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

function setGuests(guests) {
  _params.guests = guests;
  FilterParamsStore.__emitChange();
};

function clearFilters(){
  _params = {};
  _params.filter = false;
  FilterParamsStore.__emitChange();
};

function setFilter(){
  _params.filter = true;
  FilterParamsStore.__emitChange();
};

function unsetFilter(){
  _params.filter = false;
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
    case FilterConstants.UPDATE_GUESTS:
      setGuests(payload.guests);
      break;
    case FilterConstants.CLEAR_FILTERS:
      clearFilters();
      break;
    case FilterConstants.SET_FILTER:
      setFilter();
      break;
    case FilterConstants.UNSET_FILTER:
      setFilter();
      break;
  }
};

module.exports = FilterParamsStore;
