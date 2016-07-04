"use strict";

const React = require('react');
const ReactRouter = require('react-router');
const Modal = require('react-modal');
const ModalStyle = require('../util/modal_style');
const SessionStore = require('../stores/session_store');
const SessionActions = require('../actions/session_actions');
const AlertForm = require('./alert_form');
const RestaurantForm = require('./restaurant_form');

const Footer = React.createClass({
  getInitialState: function() {
    return({
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

  _handleClick: function() {
    this.setState({
      modalOpen: true
    });
  },

  componentDidMount() {
    this.listener = SessionStore.addListener(this.forceUpdate.bind(this));
  },

  componentWillUnmount() {
    this.listener.remove();
  },

  render() {
    const component = (SessionStore.isUserLoggedIn()) ?
      <RestaurantForm closeModal={this.closeModal}/> :
      <AlertForm closeModal={this.closeModal}/>;

    return (
      <footer className="footer group">

        <small className="footer-copy">
          &copy; 2016 Moritz Fliedner. All rights reserved.
        </small>

        <ul className="footer-links group">
          <li><a href="#">DISCOVER</a></li>
          <li><a href="#">ABOUT TAFELSPITZ</a></li>
          <li>
            <button id="restaurateur-button" className="restaurateur-button"
                    onClick={this._handleClick}>
              RESTAURATEUR
            </button>
          </li>
        </ul>

        <div className="footer-base"></div>

        <Modal
          isOpen={this.state.modalOpen}
          onRequestClose={this.closeModal}
          onAfterOpen={this.openModal}
          style={ModalStyle}>
          {component}
          <button onClick={this.closeModal}>Cancel</button>
        </Modal>
      </footer>
    );
  }
});

module.exports = Footer;
