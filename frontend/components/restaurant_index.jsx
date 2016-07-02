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
    return (
      <div>
        <div className="section-header">{this.tableCount()} tables available</div>
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
