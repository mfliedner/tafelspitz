"use strict";

const React = require('react');
const ReservationForm = require('./reseravtion_form');
import 'react-date-picker/index.css';
import { DateField } from 'react-date-picker';

const ReservationBar = React.createClass({
  getInitialState() {
    return {
      email: "",
			searchText: ""
    };
  },

  handleSubmit(event) {
    event.preventDefault();
    const restaurant = Object.assign({}, this.state);
    ReservationActions.createRestaurant(restaurant);
    this.navigateToRestaurant();
	},

  navigateToRestaurant() {
    hashHistory.push("/restaurants");
  },

  update(property) {
    return (e) => this.setState({[property]: e.target.value});
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
