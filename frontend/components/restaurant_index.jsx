"use strict";

const React = require('react');
const IndexItem = require('./index_item');

const RestaurantIndex = React.createClass({
  tableCount() {
    let count = 0;
    return(count);
  },

  render() {
    const restaurants = this.props.restaurants;
    const restaurantKeys = Object.keys(restaurants);
    let ent = "tables";
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
