"use strict";

const React = require('react');
const RestaurantStore = require('../stores/restaurant_store');
const FilterParamsStore = require('../stores/filter_params_store');
const FilterActions = require('../actions/filter_actions');
const Link = require('react-router').Link;
const Header = require('./header');
const Footer = require('./footer');
const DisplayConstants = require('../constants/display_constants');
const Review = require('./review');
const RestaurantMap = require('./restaurant_map');
const RestaurantActions = require('../actions/restaurant_actions');
const ReservationBar = require('./reservation_bar');
const FavoriteActions = require('../actions/favorite_actions');
const SessionStore = require('../stores/session_store');
const StarRatingComponent = require('react-star-rating-component');

const RestaurantShow = React.createClass({
  getInitialState() {
    let restaurantId;
    if (!!this.props) {
      restaurantId = parseInt(this.props.params.restaurantId);
    }
    const restaurant = RestaurantStore.find(restaurantId) || {} ;
    return ({
      restaurant: restaurant,
      currentUser: SessionStore.currentUser()
    });
  },

  componentDidMount() {
    this.restaurantListener = RestaurantStore.addListener(this._restaurantChanged);
    this.sessionListener = SessionStore.addListener(this._userChanged);
    const params = FilterParamsStore.params();
    RestaurantActions.fetchAllRestaurants(params);
  },

  componentWillUnmount() {
    this.restaurantListener.remove();
    this.sessionListener.remove();
  },

  _userChanged() {
    this.setState({ current_user: SessionStore.currentUser() });
  },

  _restaurantChanged() {
    let restaurantId = this.state.restaurant.id;
    if (!restaurantId && !!this.props) {
      restaurantId = parseInt(this.props.params.restaurantId);
    }
    const restaurant = RestaurantStore.find(restaurantId);
    this.setState({ restaurant });
  },

  _handleClick() {
    FilterActions.clearFilters();
  },

  toggleFavorite() {
    let restaurantId = this.state.restaurant.id;
    if (!restaurantId && !!this.props) {
      restaurantId = parseInt(this.props.params.restaurantId);
    }
    const data = { restaurant_id: restaurantId };

    if(this._isLiked() === "\u2661") {
      FavoriteActions.createFavorite(data);
    } else {
      FavoriteActions.deleteFavorite(data);
    }
  },

  _isLiked() {
    let likeText = "\u2661";
    const currentUser = this.state.currentUser;
    let restaurantId = this.state.restaurant.id;
    if (!restaurantId && !!this.props) {
      restaurantId = parseInt(this.props.params.restaurantId);
    }

    if(SessionStore.isUserLoggedIn()) {
      const currentUserFavs = currentUser.favorite_restaurants;
      if (currentUserFavs.indexOf(restaurantId) !== -1) {
        likeText = "\u2665";
      }
    }

    return likeText;
  },

  display_ratings(average, count) {
    const restaurant = this.state.restaurant;
    if (count > 0) {
      return (
        <div className="rateValue">
          <span className="stars">
            <StarRatingComponent
                name="rating"
                editing={false}
                starCount={5}
                value={Math.round(restaurant.average_rating)}
            />
          </span>
          <span className="count">
            {restaurant.count_rating}
            {" reviews"}
          </span>
        </div>
      )
    } else {
      return (<div className="unrated">Reviews coming soon</div>)
    }
  },

  render() {
    const restaurant = this.state.restaurant;
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
                {this.display_ratings(restaurant.average_rating,
                                      restaurant.count_rating)}
              </div>
              <ul className="show-header-other">
                <li className="show-header-address">{restaurant.address}</li>
                <li className="show-header-priceRange">
                  {DisplayConstants.PRICE_RANGE[restaurant.price_range]}
                </li>
                <li>
                  <button onClick={this.toggleFavorite} className="like-button">
                    {this._isLiked()}
                  </button>
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
                    <Review review={restaurant.reviews}/>
                  </div>
                </section>
                <div className="section-content">
                </div>
              </div>
            </div>
          </div>
          <div className="footer-top">
            <Link to="/" onClick={this._handleClick} className="full-list">
              {"See Full Restaurant List >"}
            </Link>
          </div>
          <Footer/>
      </div>
      );
  }
});

module.exports = RestaurantShow;
