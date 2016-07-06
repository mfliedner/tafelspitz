"use strict";

const React = require('react');
const TimeSlotForm = require('./time_slot_form');
const GuestsForm = require('./guests_form');
const DateForm = require('./date_form');
const FilterActions = require('../actions/filter_actions');

const ReservationForm = React.createClass({
  render() {
    return (
      <div className="reservation-form">
        <div className="search-fields">
          <div className="search-guests">
            <GuestsForm count={this.props.guest_count}/>
          </div>
          <div className="search-date">
            <DateForm day={this.props.date}/>
          </div>
          <div className="search-time">
            <TimeSlotForm slot={this.props.time_slot}/>
          </div>
        </div>
      </div>
    );
  }
});

module.exports = ReservationForm;
