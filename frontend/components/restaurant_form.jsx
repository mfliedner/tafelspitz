"use strict";

const React = require('react');
const RestaurantActions = require('../actions/restaurant_actions');
const hashHistory = require('react-router').hashHistory;

const RestaurantForm = React.createClass({
  getInitialState() {
    return {
      name: "",
      description: "",
      address: "",
      phone: "",
      menu: "",
      img_url: "",
      price_range: 1
    };
  },
  handleSubmit(event) {
    event.preventDefault();
    const restaurant = Object.assign({}, this.state, this._coords());
    RestaurantActions.createRestaurant(restaurant);
    this.navigateToSearch();
  },
  navigateToSearch() {
    hashHistory.push("/");
  },
  handleCancel(event) {
    event.preventDefault();
    this.navigateToSearch();
  },
  _coords() {
    return this.props.location.query;
  },
  update(property) {
    return (e) => this.setState({[property]: e.target.value});
  },
  render() {
    const lat = this._coords().lat, lng = this._coords().lng;
    return (
        <div className="new-restaurant-container">
          <div className="new-restaurant-form">
            <h3 className="new-restaurant-title">Create A Restaurant!</h3>
            <form onSubmit={this.handleSubmit}>
              <label className="restaurant-field">Name</label>
              <input type="text" value={this.state.name}
                onChange={this.update("name")} className="restaurant-field"/>

              <label className="restaurant-field">Description</label>
              <input type="text" value={this.state.description}
                onChange={this.update("description")} className="restaurant-field"/>

              <label className="restaurant-field">Address</label>
              <input type="text" value={this.state.address}
                onChange={this.update("address")} className="restaurant-field"/>

              <label className="restaurant-field">Phone</label>
              <input type="text" value={this.state.phone}
                onChange={this.update("phone")} className="restaurant-field"/>

              <label className="restaurant-field">Menu</label>
              <input type="text" value={this.state.menu}
                onChange={this.update("menu")} className="restaurant-field"/>

              <label className="restaurant-field">Image URL</label>
              <input type="text" value={this.state.imageURL}
                onChange={this.update("img_url")} className="restaurant-field"/>

              <label className="restaurant-field">Price Range</label>
              <input min='1' max='4' type="number" value={this.state.price_range}
                onChange={this.update("price_range")} className="restaurant-field"/>

              <div className="button-holder">
                <input type="submit" value="Create Restaurant" className="new-restaurant-button"/>
              </div>
            </form>
            <div className="button-holder">
              <button className="new-restaurant-button" onClick={this.handleCancel}>Cancel</button>
            </div>
          </div>
        </div>
    );
  }
});

module.exports = RestaurantForm;
