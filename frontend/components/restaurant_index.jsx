"use strict";

const React = require('react');
const IndexItem = require('./index_item');

const RestaurantIndex = React.createClass({
  tableCount() {
    let count = 0;
    return(count);
  },

  render() {
    // if (this.props.filter === "favorites") {
    //
    // }
    const restaurants = this.props.restaurants;
    const restaurantKeys = Object.keys(restaurants);
    let ent = "tables";
    if(!restaurants || restaurantKeys.length < 1) {
      return (
        <div>
          <div className="section-header">No Availability</div>
          <div className="section"></div>
        </div>
      );
    }
    if (restaurantKeys.length === 1) {
      ent = "table";
    }
    return (
      <div>
        <div className="section-header">{restaurantKeys.length} {ent} available</div>
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
