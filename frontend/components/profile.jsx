"use strict";

const React = require('react');
const Header = require('./header');
const User = require('./user');
const Footer = require('./footer');
const ReservationStore = require('../stores/reservation_store');
const ReservationActions = require('../actions/reservation_actions');
const ReservationIndex = require('./reservation_index');

const Profile = React.createClass({
  getInitialState() {
    return {
      reservations: ReservationStore.all(),
    };
  },

  _reservationsChanged() {
    this.setState({reservations: ReservationStore.all()});
  },

  componentDidMount() {
    this.reservationListener = ReservationStore.addListener(this._reservationsChanged);
    ReservationActions.fetchReservations();
  },

  componentWillUnmount() {
    this.reservationListener.remove();
  },

  render() {
    return (
      <div className="user-profile">
        <Header/>
        <User/>
        <ReservationIndex reservations={this.state.reservations}/>
        <Footer/>
      </div>
    );
  }
});

module.exports = Profile;
