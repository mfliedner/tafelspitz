"use strict";

const React = require('react');
const Reservation = require('./reservation');
const moment = require('moment');

const ReservationIndex = React.createClass({
  render() {
    let reservations = this.props.reservations;
    let header = "No Reservations";

    if (!!reservations && Object.keys(reservations).length > 0) {
      reservations = reservations.reservation_items;
      const now = moment();
      let now_idx = -1;
      for(let i = 0; i < reservations.length; i++) {
        if (moment(reservations[i].date) < now) {
          now_idx = i;
        }
      }

      header = "Reservations";
      if (now_idx === reservations.length - 1) {
        header = "Past Reservations";
      }
      if (now_idx < 0) {
        header = "Upcoming Reservations"
      }
    } else {
      return (<div className="reservations-header">{header}</div>);
    }

    return (
      <div>
        <div className="reservations-header">{header}</div>
        <div className="section">
          {
            reservations.map( reservation => {
              return (<Reservation
                reservation={reservation}
                key={reservation.id} />);
            } )
          }
        </div>
      </div>
    );
  }
});

module.exports = ReservationIndex;
