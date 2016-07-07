"use strict";

const React = require('react');
const Reservation = require('./reservation');

const ReservationIndex = React.createClass({
  render() {
    const reservations = this.props.reservations;
    // debugger
    const reservationKeys = Object.keys(reservations);

    return (
      <div>
        <div className="section-header">Reservations</div>
        <div className="section">
          {
            reservationKeys.map( key => {
              const reservation = reservations[key];
              return (<Reservation
                reservation={reservation}
                key={key} />);
            })
          }
        </div>
      </div>
    );
  }
});

module.exports = ReservationIndex;
