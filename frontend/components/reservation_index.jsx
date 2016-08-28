"use strict";

const React = require('react');
const Reservation = require('./reservation');
const moment = require('moment');

const ReservationIndex = React.createClass({
  sections(idx, header, reservations) {
    // incoming sort: descending
    // sort upcoming reservations in ascending order
    if (idx < 0) {
      return (this.section(header, reservations));
    } else if (idx+1 >= reservations.length) {
      return (this.section(header, reservations.reverse()));
    } else {
      return (
        <div>
          {this.section(header, reservations.slice(0, idx+1).reverse())}
          {this.section("Past Reservations", reservations.slice(idx+1))}
        </div>
      );
    }
  },

  section(header, reservations) {
    let past = false;
    if (header[0] === 'P') {
      past = true;
    }
    return (
      <div>
        <div className="reservations-header">{header}</div>
        <div className="section">
          {
            reservations.map( reservation => {
              return (<Reservation
                reservation={reservation}
                past={past}
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

    if (!!reservations && reservations.length > 0) {
      const now = moment().format('YYYY MM DD');
      for(let i = 0; i < reservations.length; i++) {
        // temporary UTC setting until time zones are handled
        const date = moment(reservations[i].date).utc().format('YYYY MM DD');
        if (date >= now) {
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
