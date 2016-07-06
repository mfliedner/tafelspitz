"use strict";

const React = require('react');
const ReactRouter = require('react-router');
const Modal = require('react-modal');
const ModalStyle = require('../util/modal_style');
const SessionStore = require('../stores/session_store');
const SessionActions = require('../actions/session_actions');
const AlertForm = require('./alert_form');
const ReservationForm = require('./reservation_form');
const FilterParamsStore = require('../stores/filter_params_store');
const FilterConstants = require('../constants/filter_constants');
const ReservationActions = require('../actions/reservation_actions');
const moment = require('moment');

const ReservationBar = React.createClass({
  getInitialState: function() {
    return({
      date: moment().format('ll'),
      time_slot: FilterConstants.DEFAULT_TIME_SLOT,
      guest_count: FilterConstants.DEFAULT_GUEST_COUNT,
      restaurant_id: this.props.restaurant.id,
      requests: "",
      modalOpen: false
    });
  },

  closeModal: function() {
    this.setState({ modalOpen: false });
    ModalStyle.content.opacity = 0;
  },

  openModal: function() {
    ModalStyle.content.opacity = 100;
  },

  componentDidMount() {
    this.listener = SessionStore.addListener(this.forceUpdate.bind(this));
  },

  componentWillUnmount() {
    this.listener.remove();
  },

  handleSubmit(event) {
    event.preventDefault();
    if (SessionStore.isUserLoggedIn()) {
      const newFilters = FilterParamsStore.params();
      const newState = { date: newFilters.date,
                         time_slot: newFilters.time_slot,
                         guest_count: newFilters.guest_count,
                         restaurant_id: this.props.restaurant.id,
                         requests: ""
                       };
      const time = newFilters.time_slot * 60 * 30;
      
      const reservation = { date: newState.date,
                            time: time,
                            guest_count: newState.guest_count,
                            restaurant_id: newState.restaurant_id,
                            requests: ""
                          };
      this.setState(newState);
      ReservationActions.createReservation(reservation);
    } else {
      this.setState( {modalOpen: true} );
    }
  },

  render() {
    return (
      <div className="reservation-bar">
        <form onSubmit={this.handleSubmit} className="reservation-fields">
          <ReservationForm reservationParms={this.state}/>
          <div className="search-button">
            <input type="submit" value="Find a Table" className="find-button"/>
          </div>
        </form>

        <Modal
          isOpen={this.state.modalOpen}
          onRequestClose={this.closeModal}
          onAfterOpen={this.openModal}
          style={ModalStyle}>
          <AlertForm closeModal={this.closeModal}
            greeting="Almost Done. To complete your reservation"
            message="please sign in or sign up for Tafelspitz"
          />
          <button onClick={this.closeModal}>Cancel</button>
        </Modal>
      </div>
    );
  }
});

module.exports = ReservationBar;
