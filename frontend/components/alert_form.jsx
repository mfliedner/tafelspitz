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
	        {this.props.greeting}
				</div>
				<div className="alert-message">
	        {this.props.message}
				</div>
			</div>
		);
	}
});

module.exports = AlertForm;
