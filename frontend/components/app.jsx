"use strict";

const React = require('react');
const SessionStore = require('../stores/session_store');
const SessionActions = require('../actions/session_actions');
const Header = require('./header');
const Content = require('./content');
const Footer = require('./footer');

const App = React.createClass({

  componentDidMount() {
    SessionStore.addListener(this.forceUpdate.bind(this));
  },

  render() {
    return (
      <div>
        <Header/>
        <Content/>
        {this.props.children}
        <Footer/>
      </div>
    );
  }
});

module.exports = App;
