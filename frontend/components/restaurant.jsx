"use strict";

const React = require('react');
const SessionStore = require('../stores/session_store');

const Restaurant = React.createClass({
  getInitialState() {
    return { currentUser: SessionStore.currentUser() };
  },

  componentDidMount() {
    this.sessionListener = SessionStore.addListener(this._userChanged);
  },

  _userChanged() {
    this.setState({current_user: SessionStore.currentUser() });
  },

  componentWillUnmount() {
    this.sessionListener.remove();
  },

  render() {
    return (
      <div>
        <ul>
          <img height="200px" src={this.props.restaurant.img_url}/>
          <li>Name: {this.props.restaurant.name}</li>
          <li>Address: {this.props.restaurant.address}</li>
          <li>Description: {this.props.restaurant.description}</li>
          <li>Price Range: {this.props.restaurant.price_range}</li>
        </ul>
      </div>
    );
  }
});

module.exports = Restaurant;
