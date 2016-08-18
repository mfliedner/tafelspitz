"use strict";

const React = require('react');

const ConfirmationForm = React.createClass({

	handleSubmit(event) {
		event.preventDefault();

    this.props.action();
		this.props.closeModal();
	},

	render() {
		return (
			<div className="confirmation-box">
				<form onSubmit={this.handleSubmit} className="confirmation-form-box">
					<div className="alert-logo group">
	          <a href="https://restaurant.opentable.com/">
	            <img src="/tafelspitz-logo.png" alt="Tafelspitz-Logo"/>
	          </a>
	        </div>
					<div className="confirmation-message">
		        {this.props.message}
					</div>

					<input type="submit" value="Confirm"/>
				</form>
			</div>
		);
	}
});

module.exports = ConfirmationForm;
