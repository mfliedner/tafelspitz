"use strict";

const React = require('react');
const Link = require('react-router').Link;
const hashHistory = require('react-router').hashHistory;
const StarRatingComponent = require('react-star-rating-component');
const Review = require('./review');

const IndexItem = React.createClass({
  _handleClick() {
    const restaurantID = this.props.restaurant.id;
    hashHistory.push("restaurants/" + restaurantID );
  },

  pricing(n) {
    let price = "";
    { for(let i = 0; i < n; i++) {
        price += "$";
      }
    }
    let rest = "";
    { for(let j = n; j < 4; j++) {
        rest += "$";
      }
    }
    return (
      <div className ="pricing">
        <i>{price}</i>
        {rest}
      </div>
    )
  },

  display_ratings(average, count) {
    const restaurant = this.props.restaurant;
    if (count > 0) {
      return (
        <div className="rated">
          <span className="stars">
            <StarRatingComponent
                name="rating"
                editing={false}
                starCount={5}
                value={Math.round(restaurant.average_rating)}
            />
          </span>
          <span className="count">({restaurant.count_rating})</span>
        </div>
      )
    } else {
      return (<div className="unrated">Reviews coming soon</div>)
    }
  },

  display_review() {
    const restaurant = this.props.restaurant;
    if (!!restaurant.reviews && restaurant.reviews.length > 0) {
      const last = restaurant.reviews.length - 1;
      return ( <Review review={restaurant.reviews[last]}/> )
    } else {
      return ( <div className="no-review"></div>)
    }
  },

  render() {
    const restaurant = this.props.restaurant;
    const route = "/restaurants/" + restaurant.id;
    let imgUrl = restaurant.img_url;
    if (imgUrl.length < 5) {
      imgUrl = "/no-image.png";
    }
    return (
        <div className="restaurant-index-item"
             onClick={this._handleClick}
             key={restaurant.id}>
          <div className="index-item-restaurant">
            <div className="index-item-image">
              <Link to={route}>
                <img src={imgUrl} alt={restaurant.name}/>
              </Link>
            </div>
            <div className="index-item-info">
              <div className="info-left group">
                <Link to={route} className="index-item-name">
                  {restaurant.name}
                </Link>
                <div className="index-item-rating">
                  {this.display_ratings(restaurant.average_rating,
                                        restaurant.count_rating)}
                </div>
                <div className="index-item-location">
                  {restaurant.address}
                </div>
              </div>
              <div className="info-right group">
                <div className="index-item-category">
                  {this.pricing(restaurant.price_range)}
                </div>
                <div className="index-item-review">
                  {this.display_review()}
                </div>
            </div>
            </div>
          </div>
        </div>
    );
  }
});

module.exports = IndexItem;
