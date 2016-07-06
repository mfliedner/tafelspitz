"use strict";

const React = require('react');
const RestaurantStore = require('../stores/restaurant_store');
const FilterParamsStore = require('../stores/filter_params_store');
const FilterActions = require('../actions/filter_actions');
const Link = require('react-router').Link;
const Header = require('./header');
const Footer = require('./footer');
const DisplayConstants = require('../constants/display_constants');
const RestaurantMap = require('./restaurant_map');
const RestaurantActions = require('../actions/restaurant_actions');
const ReservationBar = require('./reservation_bar');

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

  _handleClick() {
    FilterActions.clearFilters();
  },

  render() {
    const restaurants = {};
    const restaurant = this.state.restaurant;
    restaurants[this.state.restaurant.id] = restaurant;
    const coords = restaurant.lat + "%2C" + restaurant.lng;
    const mapParams = "&size=772x136&zoom=15&scale=2&maptype=roadmap&format=jpg&markers=icon%3Ahttp%3A%2F%2Fmedia.otstatic.com%2Fimg%2Fmap-marker-blue-1e9959e1eab6a1311c5bc48b4086b596.png%7C"
    let staticMap = "http://maps.google.com/maps/api/staticmap?center=";
    staticMap += coords + mapParams + coords;

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
                <li className="show-header-priceRange">
                  {DisplayConstants.PRICE_RANGE[restaurant.price_range]}
                </li>
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
              <div className="main-column group">
                <section id="reservation" className="main-section">
                  <div className="section-header flush-bottom">
                    Make a reservation
                  </div>
                  <div className="section-content">
                    <div className="reservation-bar">
                      <ReservationBar restaurant={restaurant}/>
                    </div>
                  </div>
                </section>
                <section id="info" className="main-section">
                  <div className="section-header flush-bottom">
                    About {restaurant.name}
                  </div>
                  <div className="section-content">
                    <div className="block-map">
                      <img src={staticMap}/>
                    </div>
                    <div className="block-description">
                      {restaurant.description}
                    </div>
                    <div className="block-detail">
                      <p>
                        <span className="item-head">Phone number: </span>
                        {restaurant.phone}
                      </p>
                    </div>
                  </div>
                </section>
                <section id="menu" className="main-section">
                  <div className="section-header header-bottom">
                    Menu for {restaurant.name}
                  </div>
                  <div className="section-content">
                    <div className="block-menu">
                      {restaurant.menu}
                    </div>
                  </div>
                </section>
                <section id="reviews" className="main-section">
                  <div className="section-header header-bottom">
                    {restaurant.name} Ratings and Reviews
                  </div>
                  <div className="block-reviews">
                    Ratings coming soon
                  </div>
                </section>
                <div className="section-content">
                </div>
              </div>
            </div>
          </div>
          <div className="footer-top">
            <Link to="/" onClick={this._handleClick}>See Full Restaurant List ></Link>
          </div>
          <Footer/>
      </div>
      );
  }
});

module.exports = RestaurantShow;
