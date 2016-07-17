"use strict";

const React = require('react');
const IndexItem = require('./index_item');

const RestaurantIndex = React.createClass({
  tableCount() {
    let count = 0;
    return(count);
  },

  render() {
    let heading = "No Availability";
    const restaurants = this.props.restaurants;
    const restaurantKeys = Object.keys(restaurants);
    let ent = " tables";
    if(!restaurants || restaurantKeys.length < 1) {
      return (
        <div>
          <div className="section-header">{heading}</div>
          <div className="section"></div>
        </div>
      );
    }
    if (restaurantKeys.length === 1) {
      ent = " table";
    }
    if (this.props.filter === "favorites") {
      heading = "Favorites"
    } else {
      heading = restaurantKeys.length + ent + " available";
    }
    return (
      <div>
        <div className="section-header">{heading}</div>
        <div className="section">
          {
            restaurantKeys.map( key => {
              return (<IndexItem
                restaurant={restaurants[key]}
                key={key} />);
            })
          }
        </div>
      </div>
    );
  }
});

module.exports = RestaurantIndex;
