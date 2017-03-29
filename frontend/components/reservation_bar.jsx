"use strict";

const React = require('react');
const ReactRouter = require('react-router');
const Modal = require('react-modal');
const ModalStyle = require('../util/modal_style');
const SessionStore = require('../stores/session_store');
const ErrorStore = require('../stores/error_store');
const AlertForm = require('./alert_form');
const ReservationForm = require('./reservation_form');
const ReservationStore = require('../stores/reservation_store');
const ReservationActions = require('../actions/reservation_actions');
const Util = require('../util/reservation_util');
const FilterParamsStore = require('../stores/filter_params_store');
const FilterConstants = require('../constants/filter_constants');
const hashHistory = require('react-router').hashHistory;
const moment = require('moment');

const ReservationBar = React.createClass({
  getInitialState: function() {
    let date = moment().format('ll');
    let time_slot = FilterConstants.DEFAULT_TIME_SLOT;
    let guest_count = FilterConstants.DEFAULT_GUEST_COUNT;
    const id = parseInt(this.props.reservation);
    if (id > 0) {
      let reservation;
      ReservationStore.all().forEach( function(item) {
        if (item.id == id) {
          reservation = item;
        };
      });
      if (reservation) {
        date = reservation.date;
        time_slot = Util.time_slot(reservation.time);
        guest_count = reservation.guest_count;
      }
    }
    return({
      date: moment(date).utc(),
      time_slot: time_slot,
      guest_count: guest_count,
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
    this.errorListener = ErrorStore.addListener(this.forceUpdate.bind(this));
    this.listener = SessionStore.addListener(this.forceUpdate.bind(this));
  },

  componentWillUnmount() {
    this.errorListener.remove();
    this.listener.remove();
  },

  handleFailure() {
    hashHistory.push("/");
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
      const time = Util.time(newFilters.time_slot);

      const reservation = { date: newState.date,
                            time: time,
                            guest_count: newState.guest_count,
                            restaurant_id: newState.restaurant_id,
                            requests: "",
                            id: this.props.reservation
                          };
      this.setState(newState);
      if(this.props.reservation > 0) {
        ReservationActions.editReservation(reservation);
      } else {
        ReservationActions.createReservation(reservation, this.handleFailure);
      }

      const id = SessionStore.currentUser().id;
      hashHistory.push("users/" + id + "/reservations/");
    } else {
      this.setState( {modalOpen: true} );
    }
  },

  fieldErrors(field) {
    const errors = ErrorStore.formErrors("reservation");

    if (!errors[field]) { return; }

    const messages = errors[field].map( (errorMsg, i) => {
      return <li key={ i }>{ errorMsg }</li>;
    });

    return <ul>{ messages }</ul>;
  },

  displayBar(seats) {
    if (seats > 0) {
      return (
        <form onSubmit={this.handleSubmit} className="reservation-fields">
          <ReservationForm reservationParms={this.state}/>
          <div className="search-button">
            <input type="submit" value="Make Reservation" className="find-button"/>
          </div>
        </form>
      )
    } else if (seats == -1) {
      return (
        <span>
          For reservations contact <a href={this.props.restaurant.contact} className="outside-link">
          {this.props.restaurant.name}</a> directly.
        </span>
      )
    } else if (seats == -2) {
      const call = "tel:" + this.props.restaurant.phone.match(/\d+/g).join("");
      return (
        <span>
          For reservations call {this.props.restaurant.name} at <a href={call} className="outside-link">
          {this.props.restaurant.phone}</a>.
        </span>
      )
    } else if (seats == -3) {
      const call = "tel:" + this.props.restaurant.phone.match(/\d+/g).join("");
      const mailDisplay = this.props.restaurant.mailto.replace(/^.*?:\/*/,"");
      const mailLink = "mailto:" + mailDisplay;
      return (
        <span>
          For reservations call {this.props.restaurant.name} at <a href={call} className="outside-link">
          {this.props.restaurant.phone}</a> or email <a href={mailLink} className="outside-link">
          {mailDisplay}</a>.
        </span>
      )
    } else {
      return <span>{this.props.restaurant.name} does not accept reservations</span>
    }
  },

  render() {
    return (
      <div className="reservation-bar">
        {this.displayBar(this.props.restaurant.seats)}

        <Modal
          className="alert-mode"
          isOpen={this.state.modalOpen}
          onRequestClose={this.closeModal}
          onAfterOpen={this.openModal}
          style={ModalStyle}>
          <AlertForm closeModal={this.closeModal}
            greeting="To complete your reservation"
            message="please sign in or sign up for Tafelspitz"
          />
          <button onClick={this.closeModal}>Cancel</button>
        </Modal>
      </div>
    );
  }
});

module.exports = ReservationBar;
