"use strict";

const React = require('react');
const RestaurantStore = require('../stores/restaurant_store');
const FilterParamsStore = require('../stores/filter_params_store');
const RestaurantActions = require('../actions/restaurant_actions');
const FilterForm = require('./filter_form');
const RestaurantIndex = require('./restaurant_index');
const RestaurantMap = require('./restaurant_map');
const hashHistory = require('react-router').hashHistory;


const Search = React.createClass({
  getInitialState() {
    return {
      restaurants: RestaurantStore.all(),
      filterParams: FilterParamsStore.params(),
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
        <div className="left-half">
          <RestaurantMap restaurants={this.state.restaurants}/>
        </div>
        <div className="right-half">
          <FilterForm filterParams={this.state.filterParams}/>
          <RestaurantIndex restaurants={this.state.restaurants}/>
        </div>
      </div>
    );
  }
});

module.exports = Search;
