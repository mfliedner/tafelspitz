"use strict";

const React = require('react');
const ReservationForm = require('./reservation_form');

const SearchBar = React.createClass({
  getInitialState() {
    return {
			searchText: ""
    };
  },

  handleSubmit(event) {
    event.preventDefault();
    const restaurant = Object.assign({}, this.state);
    SearchActions.createRestaurant(restaurant);
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
      <div className="search-bar">
        <form onSubmit={this.handleSubmit} className="search-bar-fields">
          <ReservationForm/>
          <div className="search-text">
            <input type="text" value={this.state.searchText}
              onChange={this.update("searchText")}
              placeholder="Location or Restaurant"/>
          </div>
          <div className="search-button">
            <input type="submit" value="Find a Table" className="find-button"/>
          </div>
        </form>
      </div>
    );
  }
});

module.exports = SearchBar;
