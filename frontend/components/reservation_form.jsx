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
            <GuestsForm/>
          </div>
          <div className="search-date">
            <DateForm/>
          </div>
          <div className="search-time">
            <TimeSlotForm/>
          </div>
        </div>
      </div>
    );
  }
});

module.exports = ReservationForm;
