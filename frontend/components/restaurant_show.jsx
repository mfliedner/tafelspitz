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
    const restaurant = this.state.restaurant;
    restaurants[this.state.restaurant.id] = restaurant;

    return (
        <div className="single-restaurant-show">
          <Header/>
          <div className="show-header">
            <div className="show-header-image">
              <img src={restaurant.img_url} alt={restaurant.name}/>
            </div>
            <div className="show-header-info">
              <h1 className="show-header-title">{restaurant.name}</h1>
              <div className="show-header-rating">
                <span clasName="ratingValue">4</span> stars <span itemprop="reviewCount">34</span> reviews
              </div>
              <ul className="show-header-other">
                <li className="show-header-address">{restaurant.address}</li>
                <li className="show-header-priceRange">{restaurant.price_range}</li>
              </ul>
            </div>
          </div>
          <div className="show-content">
            <div className="content-sidebar">
              <nav className="sidebar-nav group">
                <ul className="nav-links">
                  <li key="reservation-link">
                    <a href="#reservation" className="reservation-link">Reservation</a>
                  </li>
                  <li key="info-link">
                    <a href="#info">About</a>
                  </li>
                  <li key="menu-link">
                    <a href="#menu">Menu</a>
                  </li>
                  <li key="review-link">
                    <a href="#reviews">Reviews</a>
                  </li>
                </ul>
              </nav>
            </div>
            <div className="content-main">
              <div className="main-column">
                {restaurant.menu}
              </div>
            </div>
          </div>
          <div className="single-restaurant-map">
            <Link to="/" >Back to Restaurants Index</Link>
          </div>
          <Footer/>
      </div>
      );
  }
});

module.exports = RestaurantShow;
