"use strict";

const React = require('react');
const FilterParamsStore = require('../stores/filter_params_store');
const FilterForm = require('./filter_form');
const RestaurantStore = require('../stores/restaurant_store');
const RestaurantActions = require('../actions/restaurant_actions');
const RestaurantIndex = require('./restaurant_index');
const RestaurantMap = require('./restaurant_map');

const Search = React.createClass({
  getInitialState() {
    return {
      restaurants: RestaurantStore.all(),
      filterParams: FilterParamsStore.params()
    };
  },

  _restaurantsChanged() {
    this.setState({restaurants: RestaurantStore.all()});
  },

  _filtersChanged() {
    const newFilters = FilterParamsStore.params();
    this.setState({ filterParams: newFilters });
    RestaurantActions.fetchAllRestaurants(newFilters);
  },

  componentDidMount() {
    this.restaurantListener = RestaurantStore.addListener(this._restaurantsChanged);
    this.filterListener = FilterParamsStore.addListener(this._filtersChanged);
    const filterParams = FilterParamsStore.params();
    RestaurantActions.fetchAllRestaurants(filterParams);
  },

  componentWillUnmount() {
    this.restaurantListener.remove();
    this.filterListener.remove();
  },

  render() {
    return(
      <div className="user-pane">
        <div className="display-index">
          <FilterForm filterParams={this.state.filterParams}/>
          <RestaurantIndex filter="all" restaurants={this.state.restaurants}/>
        </div>
        <div className="display-map">
          <RestaurantMap restaurants={this.state.restaurants}/>
        </div>
      </div>
    );
  }
});

module.exports = Search;
