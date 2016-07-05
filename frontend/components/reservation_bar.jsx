"use strict";

const React = require('react');
const ReservationForm = require('./reservation_form');
const FilterParamsStore = require('../stores/filter_params_store');
const ReservationActions = require('../actions/reservation_actions');

const ReservationBar = React.createClass({
  handleSubmit(event) {
    event.preventDefault();
    const newFilters = FilterParamsStore.params();
    const time = newFilters.time_slot * 60 * 30;
    const reservation = { date: newFilters.date,
                          time: time,
                          guest_count: newFilters.guests,
                          restaurant_id: this.props.restaurant.id,
                          requests: ""
                        };
    ReservationActions.createReservation(reservation);
  },

  render() {
    return (
      <div className="reservation-bar">
        <form onSubmit={this.handleSubmit} className="reservation-fields">
          <ReservationForm/>
          <div className="search-button">
            <input type="submit" value="Find a Table" className="find-button"/>
          </div>
        </form>
      </div>
    );
  }
});

module.exports = ReservationBar;
