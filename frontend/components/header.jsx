"use strict";

const React = require('react');
const Modal = require('react-modal');
const ModalStyle = require('../util/modal_style');
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const SessionActions = require('../actions/session_actions');
const LoginForm = require('./login_form');
const SignupForm = require('./signup_form');
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;


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

  componentDidMount() {
    SessionStore.addListener(this.forceUpdate.bind(this));
  },

  _handleLogOut(e){
    e.preventDefault();
    SessionActions.logOut();
  },

  navbar() {
    if (SessionStore.isUserLoggedIn()) {
    	return (
    		<nav className="logout">
          <ul>
            <li className="header-name">{SessionStore.currentUser().email}</li>
            <li>
              <button id="logout-button" className="header-button"
                      onClick={this._handleLogOut}>
                Sign out
              </button>
            </li>
          </ul>
    		</nav>
    	);
    } else {
      return (
        <nav className="login-signup">
          <ul>
            <li>
              <button id="signup-button" className="header-button"
                      onClick={this._handleClick.bind(this, false)}>
                Sign up
              </button>
            </li>
            <li>
              <button id="login-button" className="header-button"
                      onClick={this._handleClick.bind(this, true)}>
                Sign in
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
      <div>
        { this.navbar() }
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
