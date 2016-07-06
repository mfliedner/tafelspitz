"use strict";

const React = require('react');
const Header = require('./header');
const Footer = require('./footer');

const Profile = React.createClass({
  render() {
    return (
      <div className="user-profile">
        <Header/>
        <Footer/>
      </div>
    );
  }
});

module.exports = Profile;
