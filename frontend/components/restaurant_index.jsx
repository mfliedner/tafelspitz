"use strict";

const React = require('react');
const IndexItem = require('./index_item');

const RestaurantIndex = React.createClass({
  render() {
    const restaurants = this.props.restaurants;
    const restaurantKeys = Object.keys(restaurants);
    return (
      <div>
        <h1>Restaurants: </h1>
        {
          restaurantKeys.map( key => {
            return (<IndexItem
              restaurant={restaurants[key]}
              key={key} />);
          })
        }
      </div>
    );
  }
});

module.exports = RestaurantIndex;
