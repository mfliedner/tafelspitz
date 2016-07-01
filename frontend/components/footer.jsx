"use strict";

const React = require('react');

const Footer = React.createClass({
  render() {
    return (
      <footer className="footer group">

        <small className="footer-copy">
          &copy; 2016 Moritz Fliedner. All rights reserved.
        </small>

        <ul className="footer-links group">
          <li><a href="#">DISCOVER</a></li>
          <li><a href="#">ABOUT TAFELSPITZ</a></li>
          <li><a href="#">RESTAURATEURS</a></li>
        </ul>

        <div className="footer-base"></div>

      </footer>
    );
  }
});

module.exports = Footer;
