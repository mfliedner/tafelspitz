"use strict";

const React = require('react');
const Link = require('react-router').Link;
const hashHistory = require('react-router').hashHistory;

const Reservation = React.createClass({
  _handleClick() {
    const reservationID = this.props.reservation.id;
    hashHistory.push("reservations/" + reservationID );
  },

  seating(n) {
    let rest = "people";
    if (this.props.reservation.guest_count === 1) {
      rest = "person";
    }
    return (
      <div className ="seating">
        Table for {this.props.reservation.guest_count} {rest}
      </div>
    )
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
                  Write Review
                </div>
                <div className="index-item-count">
                  {this.seating(reservation.guest_count)}
                </div>
              </div>
              <div className="info-right group">
                <div className="index-item-category">
                  {reservation.date}
                </div>
              </div>
            </div>
            <div className="index-item-review">
            </div>
          </div>
        </div>
    );
  }
});

module.exports = Reservation;
