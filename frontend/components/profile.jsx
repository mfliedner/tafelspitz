"use strict";

const React = require('react');
const Header = require('./header');
const User = require('./user');
const Footer = require('./footer');

const Profile = React.createClass({
  render() {
    return (
      <div className="user-profile">
        <Header/>
        <User/>
        <Footer/>
      </div>
    );
  }
});

module.exports = Profile;
