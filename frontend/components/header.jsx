"use strict";

const React = require('react');
const Modal = require('react-modal');
const ModalStyle = require('../util/modal_style');
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const SessionActions = require('../actions/session_actions');
const LoginForm = require('./login_form');
const SignupForm = require('./signup_form');
const hashHistory = require('react-router').hashHistory;

const Header = React.createClass({
  getInitialState: function() {
    return({
      modalOpen: false,
      signIn: false
    });
  },

  closeModal: function() {
    this.setState({ modalOpen: false });
    ModalStyle.content.opacity = 0;
  },

  openModal: function() {
    ModalStyle.content.opacity = 100;
  },

  _handleClick: function(bool) {
    this.setState({
      modalOpen: true,
      signIn: bool
    });
  },

  _handleGuest(event) {
    const formData = {
      email: "guest",
      password: "password"
    };
    SessionActions.logIn(formData);
  },

  componentDidMount() {
    this.listener = SessionStore.addListener(this.forceUpdate.bind(this));
  },

  componentWillUnmount() {
    this.listener.remove();
  },

  _handleLogOut(event) {
    event.preventDefault();
    SessionActions.logOut();
    hashHistory.push("/");
  },

  navbar() {
    if (SessionStore.isUserLoggedIn()) {
      const profile = "users/" + SessionStore.currentUser().id + "/reservations/"
      let greeting = "Hello!";
      if (SessionStore.currentUser().first_name) {
        greeting = "Hi, " + SessionStore.currentUser().first_name;
      } else if (SessionStore.currentUser().last_name) {
        greeting = "Hi, " + SessionStore.currentUser().last_name;
      }
    	return (
    		<nav className="header-nav logout group">
          <ul className="header-list">
            <li className="user">
              <a href="#">{greeting} <i className="chevron">&or;</i></a>
              <ul className="user-menu">
                <li><Link to={profile}>My Profile</Link></li>
                <li><a href="#">Favorites</a></li>
                <li><a href="#">Restaurants to review</a></li>
                <li>
                  <button id="logout-button" className="logout-button"
                          onClick={this._handleLogOut}>
                    Sign out
                  </button>
                </li>
              </ul>
            </li>
            <li></li>
            <li></li>
          </ul>
    		</nav>
    	);
    } else {
      return (
        <nav className="header-nav login-signup group">
          <ul className="header-list">
            <li className="signup">
              <button id="signup-button" className="signup-button"
                      onClick={this._handleClick.bind(this, false)}>
                Sign up
              </button>
            </li>
            <li className="login">
              <button id="login-button" className="login-button"
                      onClick={this._handleClick.bind(this, true)}>
                Sign in
              </button>
            </li>
            <li>
              <button id="login-button" className="guest-login-button"
                      onClick={this._handleGuest}>
                Sign in as Guest
              </button>
            </li>
          </ul>
        </nav>
      );
    }
  },

  render() {
    const component = (this.state.signIn) ?
      <LoginForm closeModal={this.closeModal}/> :
      <SignupForm closeModal={this.closeModal}/>;

    return (
      <div className="header">
        <div className="header-logo group">
          <Link to="/" >
            <img src="/tafelspitz-logo.png" alt="Tafelspitz-Logo"/>
          </Link>
        </div>

        {this.navbar()}

        <Modal
          isOpen={this.state.modalOpen}
          onRequestClose={this.closeModal}
          onAfterOpen={this.openModal}
          style={ModalStyle}>
          {component}
          <button onClick={this.closeModal}>Cancel</button>
        </Modal>
      </div>
    );
  }
});

module.exports = Header;
