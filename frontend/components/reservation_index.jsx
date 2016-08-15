"use strict";

const React = require('react');
const Reservation = require('./reservation');
const moment = require('moment');

const ReservationIndex = React.createClass({
  sections(idx, header, reservations) {
    if (idx < 0) {
      return (this.section(header, reservations));
    } else if (idx+1 >= reservations.length) {
      return (this.section(header, reservations.reverse()));
    } else {
      return (
        <div>
          {this.section(header, reservations.slice(0, idx).reverse())}
          {this.section("Past Reservations", reservations.slice(idx+1))}
        </div>
      );
    }
  },

  section(header, reservations) {
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
  },

  render() {
    let reservations = this.props.reservations;
    let header = "No Reservations";
    let now_idx = -1;

    if (!!reservations && Object.keys(reservations).length > 0) {
      reservations = reservations.reservation_items;
      const now = moment();
      for(let i = 0; i < reservations.length; i++) {
        if (moment(reservations[i].date) > now) {
          now_idx = i;
        }
      }

      if (now_idx < 0) {
        header = "Past Reservations"
      } else {
        header = "Upcoming Reservations";
      }
    } else {
      return (<div className="reservations-header">{header}</div>);
    }

    return (
      <div>{this.sections(now_idx, header, reservations)}</div>
    );
  }
});

module.exports = ReservationIndex;
