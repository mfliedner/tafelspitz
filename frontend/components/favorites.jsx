"use strict";

const React = require('react');
const Header = require('./header');
const User = require('./user');
const Footer = require('./footer');
const FilterParamsStore = require('../stores/filter_params_store');
const RestaurantStore = require('../stores/restaurant_store');
const RestaurantActions = require('../actions/restaurant_actions');
const RestaurantIndex = require('./restaurant_index');

const Favorites = React.createClass({
  getInitialState() {
    return {
      restaurants: RestaurantStore.all()
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
    return (
      <div className="user-favorites">
        <Header/>
        <User/>
        <RestaurantIndex filter="favorites"
                         restaurants={this.state.restaurants}/>
        <Footer/>
      </div>
    );
  }
});

module.exports = Favorites;
