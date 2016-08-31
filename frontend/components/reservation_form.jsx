"use strict";

const React = require('react');
const TimeSlotForm = require('./time_slot_form');
const GuestsForm = require('./guests_form');
const DateForm = require('./date_form');

const ReservationForm = React.createClass({
  render() {
    return (
      <div className="reservation-form">
        <div className="search-fields">
          <div className="search-guests">
            <GuestsForm count={this.props.reservationParms.guest_count}/>
          </div>
          <div className="search-date">
            <DateForm day={this.props.reservationParms.date}/>
          </div>
          <div className="search-time">
            <TimeSlotForm slot={this.props.reservationParms.time_slot}/>
          </div>
        </div>
      </div>
    );
  }
});

module.exports = ReservationForm;
