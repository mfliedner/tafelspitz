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
const Util = require('../util/reservation_util');
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

    if(this._isLiked() === DisplayConstants.NOT_LIKED) {
      FavoriteActions.createFavorite(data);
    } else {
      FavoriteActions.deleteFavorite(data);
    }
  },

  _isLiked() {
    let likeText = DisplayConstants.NOT_LIKED;
    const currentUser = this.state.currentUser;
    let restaurantId = this.state.restaurant.id;
    if (!restaurantId && !!this.props) {
      restaurantId = parseInt(this.props.params.restaurantId);
    }

    if(SessionStore.isUserLoggedIn()) {
      const currentUserFavs = currentUser.favorite_restaurants;
      if (!!currentUserFavs && currentUserFavs.indexOf(restaurantId) !== -1) {
        likeText = DisplayConstants.LIKED;
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

  display_reviews() {
    const restaurant = this.state.restaurant;
    const reviews = restaurant.reviews;
    if (!!reviews && reviews.length > 0) {
      return (
        <div className="review-list">
          <ul>
            <li className="review-top">
              <span>{"Overall Rating:"}</span>{parseFloat(restaurant.average_rating).toFixed(1)}
            </li>
            {
              reviews.map( (review) => {
                return ( <li key={review.id}>{this.display_single_review(review)}</li> );
              })
            }
          </ul>
        </div>
      );
    } else {
      return ( <div className="no-list">Reviews coming soon</div>)
    }
  },

  sectorRatings(review) {
    const rateF = (review.rate_food > 0) ? review.rate_food : "not rated";
    const rateA = (review.rate_ambience > 0) ? review.rate_ambience : "not rated";
    const rateS = (review.rate_service > 0) ? review.rate_service : "not rated";
    const rateV = (review.rate_value > 0) ? review.rate_value : "not rated";
    return (
      <li className="sector-rating">
        {"FOOD"}<span>{rateF}</span>
        {"AMBIENCE"}<span>{rateA}</span>
        {"SERVICE"}<span>{rateS}</span>
        {"VALUE"}<span>{rateV}</span>
      </li>
    );
  },

  display_single_review(review) {
    return (
      <ul className="single-review">
        <li>
          <StarRatingComponent
              name="rating"
              editing={false}
              starCount={5}
              value={Math.round(review.rating)}
          />
        </li>
        {this.sectorRatings(review)}
        <li>
          <Review review={review}/>
        </li>
      </ul>
    );
  },

  display_like_button() {
    if(SessionStore.isUserLoggedIn()) {
      return (
        <button onClick={this.toggleFavorite} className="like-button">
          {this._isLiked()}
        </button>
      );
    } else {
      return (<div></div>);
    }
  },

  render() {
    let phoneHead = "";
    let phoneLink = "";
    let contactHead = "";
    let contactDisplay = "";
    let mailHead = "";
    let mailLink = "";
    let mailDisplay = "";
    let webHead = "";
    let webDisplay = "";
    let reservationID = 0;
    if (this.props.params.reservationId) {
      reservationID = this.props.params.reservationId;
    }
    const restaurant = this.state.restaurant;
    const coords = restaurant.lat + "%2C" + restaurant.lng;
    let staticMap = DisplayConstants.STATIC_MAP_API + coords + DisplayConstants.STATIC_MAP_PARAMS + coords;

    if (restaurant.phone && restaurant.phone.length > 4) {
      phoneHead = "Phone: ";
      phoneLink = "tel:" + restaurant.phone.match(/\d+/g).join("");
    }

    if (restaurant.mailto && restaurant.mailto.length > 4) {
      mailHead = "Email: ";
      mailDisplay = restaurant.mailto.replace(/^.*?:\/*/,"");
      mailLink = "mailto:" + mailDisplay;
    }

    if (restaurant.contact && restaurant.contact.length > 4) {
      contactHead = "Contact Form: ";
      contactDisplay = restaurant.contact.replace(/^.*?:\/*/,"");
      if (contactDisplay.charAt(contactDisplay.length-1) === '/') {
        contactDisplay = contactDisplay.slice(0, -1);
      }
      if (contactDisplay.length > 40) {
        contactDisplay = contactDisplay.slice(0, 34) + "..." +
                         contactDisplay.slice(-3);
      }
    }

    if (restaurant.website && restaurant.website.length > 4) {
      webHead = "Website: ";
      webDisplay = restaurant.website.replace(/^.*?:\/*/,"");
      if (webDisplay.charAt(webDisplay.length-1) === '/') {
        webDisplay = webDisplay.slice(0, -1);
      }
      if (webDisplay.length > 40) {
        webDisplay = webDisplay.slice(0, 34) + "..." +
                         webDisplay.slice(-3);
      }
    }

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
                  {this.display_like_button()}
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
                      <ReservationBar reservation={reservationID}
                                      restaurant={restaurant}/>
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
                        <span className="item-head">{phoneHead}</span>
                        <a href={phoneLink} className="outside-link">
                          {restaurant.phone}
                        </a>
                      </p>
                      <p>
                        <span className="item-head">{mailHead}</span>
                        <a href={mailLink} className="outside-link">
                          {mailDisplay}
                        </a>
                      </p>
                      <p>
                        <span className="item-head">{contactHead}</span>
                        <a href={restaurant.contact} className="outside-link">
                          {contactDisplay}
                        </a>
                      </p>
                      <p>
                        <span className="item-head">{webHead}</span>
                        <a href={restaurant.website} className="outside-link">
                          {webDisplay}
                        </a>
                      </p>
                      <p>
                        <span className="item-head">Opening Time: </span>
                        {Util.timing(restaurant.opening)}
                      </p>
                      <p>
                        <span className="item-head">Closing Time: </span>
                        {Util.timing(restaurant.closing)}
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
                    {this.display_reviews()}
                  </div>
                </section>
              </div>
              <div className="main-bottom">
                <Link to="/" onClick={this._handleClick} className="full-list">
                  {"See Full Restaurant List >"}
                </Link>
              </div>
            </div>
          </div>
          <div className="footer-top">
              {">>"}
          </div>
          <Footer/>
      </div>
      );
  }
});

module.exports = RestaurantShow;
