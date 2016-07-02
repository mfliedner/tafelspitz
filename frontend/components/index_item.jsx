"use strict";

const React = require('react');
const Link = require('react-router').Link;
const hashHistory = require('react-router').hashHistory;

const IndexItem = React.createClass({
  _handleClick() {
    const restaurantID = this.props.restaurant.id;
    hashHistory.push("restaurants/" + restaurantID );
  },

  render() {
    const restaurant = this.props.restaurant;
    const route = "/restaurants/" + restaurant.id;
    return (
        <div className="restaurant-index-item"
             onClick={this._handleClick}
             key={restaurant.id}>
          <div className="index-item-restaurant">
            <div className="index-item-image">
              <Link to={route} >
                <img src={restaurant.img_url} alt={restaurant.name}/>
              </Link>
            </div>
            <div className="index-item-info">
              <Link to={route} className="index-item-name">
                {restaurant.name}
              </Link>
              <div className="index-item-category">
                {restaurant.price_range || "No reviews yet"}
              </div>
              <div className="index-item-rating">
              </div>
              <div className="index-item-location">
                {restaurant.address}
              </div>
            </div>
            <div className="index-item-review">
            </div>
          </div>
        </div>
    );
  }
});

module.exports = IndexItem;
