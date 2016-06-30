"use strict";

const React = require('react');
const SessionStore = require('../stores/session_store');
const SessionActions = require('../actions/session_actions');
const Header = require('./header');

const App = React.createClass({

  componentDidMount() {
    SessionStore.addListener(this.forceUpdate.bind(this));
  },

  render() {
    return (
      <div>
        <Header/>
        {this.props.children}
      </div>
    );
  }
});

module.exports = App;
