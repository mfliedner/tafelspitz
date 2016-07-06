"use strict";

const React = require('react');
const SessionStore = require('../stores/session_store');

const User = React.createClass({
  render() {
    if (SessionStore.currentUser().email === "guest") {
      return (
        <div className="user-section">
          <div className="guest-greeting">
            Thank you for visiting Tafelspitz!
          </div>
          <div className="guest-message">
            If you like to store and manage your reservations,
            Please sign up as a regular user!
          </div>
        </div>
      );
    } else {
      const firstName = !SessionStore.currentUser().first_name ?
                    "" : SessionStore.currentUser().first_name;
      const lastName = !SessionStore.currentUser().last_name ?
                    "" : SessionStore.currentUser().last_name;
      let name = "Anonymous";
      if (firstName.length + lastName.length > 0) {
        name = firstName + " " + lastName;
      }
      return (
        <div className="user-section">
          <div className="user-name">{name}</div>
        </div>
      );
    }
  }
});

module.exports = User;
