"use strict";

const React = require('react');
const hashHistory = require('react-router').hashHistory;

const IndexItem = React.createClass({
  handleClick() {
    const restaurantID = this.props.restaurant.id;
    hashHistory.push("restaurants/" + restaurantID );
  },

  render() {
    const restaurant = this.props.restaurant;
    return (
        <div className="restaurant-index-item"
             onClick={this.handleClick}
             key={restaurant.id}>
          <div className="index-item-info">
            <span className="index-item-category">Name: </span>
            <span className="index-item-copy">
              {restaurant.name}
            </span>
            <span className="index-item-category">Price Range: </span>
            <span className="index-item-copy">
              {restaurant.price_range || "No reviews yet"}
            </span>
            <span className="index-item-category">Description: </span>
            <span className="index-item-copy">
              {restaurant.description}
            </span>
          </div>
          <img src={restaurant.img_url}/>
        </div>
    );
  }
});

module.exports = IndexItem;
