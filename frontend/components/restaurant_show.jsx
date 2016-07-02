"use strict";

const React = require('react');
const RestaurantStore = require('../stores/restaurant_store');
const FilterParamsStore = require('../stores/filter_params_store');
const Link = require('react-router').Link;
const Header = require('./header');
const Footer = require('./footer');
const RestaurantDetail = require('./restaurant');
const RestaurantMap = require('./restaurant_map');
const RestaurantActions = require('../actions/restaurant_actions');
const hashHistory = require('react-router').hashHistory;

const RestaurantShow = React.createClass({
  getInitialState() {
    const restaurantId = this.props.params.restaurantId;
    const restaurant = RestaurantStore.find(restaurantId) || {} ;
    return { restaurant };
  },

  componentDidMount() {
    this.restaurantListener = RestaurantStore.addListener(this._restaurantChanged);
    const params = FilterParamsStore.params();
    RestaurantActions.fetchAllRestaurants(params);
  },

  componentWillUnmount() {
    this.restaurantListener.remove();
  },

  _restaurantChanged() {
    const restaurantId = this.props.params.restaurantId;
    const restaurant = RestaurantStore.find(restaurantId);
    this.setState({ restaurant });
  },

  render() {
    const restaurants = {};
    restaurants[this.state.restaurant.id] = this.state.restaurant;

    return (
        <div className="single-restaurant-show">
          <Header/>
          <div className="page-header">
            
          </div>
          <div className="single-restaurant-map">
            <Link to="/" >Back to Restaurants Index</Link>
          </div>
          <div className="right-half restaurant-details">
            <RestaurantDetail restaurant={this.state.restaurant} />
          </div>
          <Footer/>
      </div>
      );
  }
});

module.exports = RestaurantShow;
