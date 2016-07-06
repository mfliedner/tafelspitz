"use strict";

const React = require('react');
const SessionStore = require('../stores/session_store');
const Header = require('./header');
const Content = require('./content');
const Footer = require('./footer');

const App = React.createClass({

  componentDidMount() {
    this.listener = SessionStore.addListener(this.forceUpdate.bind(this));
  },

  componentWillUnmount() {
    this.listener.remove();
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
