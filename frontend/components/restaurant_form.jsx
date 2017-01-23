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
      mailto: "",
      contact: "",
      website: "",
      menu: "",
      img_url: "",
      price_range: 1
    };
  },

  handleSubmit(event) {
    event.preventDefault();
    const restaurant = Object.assign({}, this.state);
    RestaurantActions.createRestaurant(restaurant);
    this.props.closeModal();
    this.navigateToSearch();
  },

  navigateToSearch() {
    hashHistory.push("/");
  },

  update(property) {
    return (e) => this.setState({[property]: e.target.value});
  },

  render() {
    return (
        <div className="new-restaurant-container">
          <div className="new-restaurant-form">
            <div className="new-restaurant-title">Enter your Restaurant!</div>
            <form onSubmit={this.handleSubmit}>
              <label className="restaurant-field-label">Name</label>
              <input type="text" value={this.state.name}
                onChange={this.update("name")} className="restaurant-field"
                placeholder="Restaurant Name *"/>

              <label className="restaurant-field-label">Description</label>
              <textarea value={this.state.description}
                onChange={this.update("description")} className="restaurant-field"
                maxlength="2000"
                placeholder="Write a short description * (up to 2000 characters)">
              </textarea>

              <label className="restaurant-field-label">Address</label>
              <input type="text" value={this.state.address}
                onChange={this.update("address")} className="restaurant-field"
                placeholder="Address *"/>

              <label className="restaurant-field-label">Phone</label>
              <input type="text" value={this.state.phone}
                onChange={this.update("phone")} className="restaurant-field"
                placeholder="Telephone Number"/>

              <label className="restaurant-field-label">Email</label>
              <input type="text" value={this.state.mailto}
                onChange={this.update("mailto")} className="restaurant-field"
                placeholder="Email Contact"/>

              <label className="restaurant-field-label">Web contact</label>
              <input type="text" value={this.state.contact}
                onChange={this.update("contact")} className="restaurant-field"
                placeholder="Web Contact form"/>

              <label className="restaurant-field-label">Website</label>
              <input type="text" value={this.state.website}
                onChange={this.update("website")} className="restaurant-field"
                placeholder="Website"/>

              <label className="restaurant-field-label">Menu</label>
              <textarea value={this.state.menu}
                onChange={this.update("menu")} className="restaurant-field"
                maxlength="2000"
                placeholder="Menu">
              </textarea>

              <label className="restaurant-field-label">Image URL</label>
              <input type="text" value={this.state.imageURL}
                onChange={this.update("img_url")} className="restaurant-field"
                placeholder="URL to restaurant image"/>

              <div className="price-range">
                <label>Price Range Selector</label>
                <input min='1' max='4' type="number" value={this.state.price_range}
                  onChange={this.update("price_range")} className="price-selector"/>
              </div>

              <input type="submit" value="Create Restaurant" className="new-restaurant-button"/>
            </form>
          </div>
        </div>
    );
  }
});

module.exports = RestaurantForm;
