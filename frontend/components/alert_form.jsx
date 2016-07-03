"use strict";

const React = require('react');

const AlertForm = React.createClass({
	render() {
		return (
			<div className="alert-box">
				<div className="alert-logo group">
          <a href="https://restaurant.opentable.com/">
            <img src="/tafelspitz-logo.png" alt="Tafelspitz-Logo"/>
          </a>
        </div>
				<div className="alert-greeting">
	        Get started with Tafelspitz for Restaurants
				</div>
				<div className="alert-message">
	        To add your restaurant to our database, please sign in at the top of the page.
				</div>
			</div>
		);
	}
});

module.exports = AlertForm;
