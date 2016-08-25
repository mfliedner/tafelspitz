"use strict";

const React = require('react');
const Parser = require('parse-address');
const ReservationForm = require('./reservation_form');
const RestaurantStore = require('../stores/restaurant_store');
const RestaurantActions = require('../actions/restaurant_actions');
const FilterParamsStore = require('../stores/filter_params_store');
const FilterConstants = require('../constants/filter_constants');
const AutoCompleteForm = require('./auto');
const hashHistory = require('react-router').hashHistory;
const moment = require('moment');

const SearchBar = React.createClass({
  parseRestaurants() {
    const restaurants = this.state.restaurants;
    const restaurantKeys = Object.keys(this.state.restaurants);
    let list = [];
    if (!!restaurants && restaurantKeys.length > 0) {
      list = restaurantKeys.map( (key) => {
        return (restaurants[key].name);
      });
      // let parsed;
      // restaurantKeys.forEach( (key) => {
      //   parsed = Parser.parseLocation(restaurants[key].address);
      //   if (parsed.city !== undefined && list.indexOf(parsed.city) === -1) {
      //     list.push(parsed.city);
      //   }
      // });
    }
    return list;
  },

  getInitialState() {
    return {
      restaurants: RestaurantStore.all(),
      list: [],
    };
  },

  _restaurantsChanged() {
    this.setState({restaurants: RestaurantStore.all()});
    this.setState({list: this.parseRestaurants()});
  },

  componentDidMount() {
    this.restaurantListener = RestaurantStore.addListener(this._restaurantsChanged);
  },

  componentWillUnmount() {
    this.restaurantListener.remove();
  },

  handleSubmit(event) {
    event.preventDefault();
    const newFilters = FilterParamsStore.params();
    newFilters.filter = true;
    RestaurantActions.fetchAllRestaurants(newFilters);
    const restaurantIDs = Object.keys(this.state.restaurants);
    if (restaurantIDs.length === 1) {
      hashHistory.push("restaurants/" + restaurantIDs[0]);
    }
  },

  render() {
    const reservationParms = {
      date: moment().format('ll'),
      time_slot: FilterConstants.DEFAULT_TIME_SLOT,
      guest_count: FilterConstants.DEFAULT_GUEST_COUNT
    }
    return (
      <div className="search-bar">
        <form onSubmit={this.handleSubmit} className="search-bar-fields">
          <ReservationForm reservationParms={reservationParms}/>
          <AutoCompleteForm list={this.state.list}/>
          <div className="search-button">
            <input type="submit" value="Find a Table" className="find-button"/>
          </div>
        </form>
      </div>
    );
  }
});

module.exports = SearchBar;
