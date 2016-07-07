"use strict";

const React = require('react');
const Reservation = require('./reservation');

const ReservationIndex = React.createClass({
  render() {
    let reservations = this.props.reservations;
    if (Object.keys(reservations).length > 0) {
      reservations = reservations.reservation_items
    } else {
      return (<div className="section-header">No Reservations</div>);
    }

    return (
      <div>
        <div className="section-header">Reservations</div>
        <div className="section">
          {
            reservations.map( reservation => {
              return (<Reservation
                reservation={reservation}
                key={reservation.id} />);
            })
          }
        </div>
      </div>
    );
  }
});

module.exports = ReservationIndex;
