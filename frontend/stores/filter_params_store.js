"use strict";

const AppDispatcher = require('../dispatcher/dispatcher');
const Store = require('flux/utils').Store;
const FilterConstants = require('../constants/filter_constants');

let _params = {};
const FilterParamsStore = new Store(AppDispatcher);

FilterParamsStore.params = function() {
  return Object.assign({}, _params);
};

function setBounds(bounds) {
  _params.bounds = bounds;
  FilterParamsStore.__emitChange();
}

function clearFilters(){
  _params = {};
  FilterParamsStore.__emitChange();
}

FilterParamsStore.__onDispatch = function(payload) {
  switch(payload.actionType){
    case FilterConstants.UPDATE_BOUNDS:
      setBounds(payload.bounds);
      break;
    case FilterConstants.CLEAR_FILTERS:
      clearFilters();
      break;
  }
};

module.exports = FilterParamsStore;
