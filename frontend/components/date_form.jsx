"use strict";

const React = require('react');
const FilterActions = require('../actions/filter_actions');
import 'react-date-picker/index.css';
import { DateField } from 'react-date-picker';

const DateForm = React.createClass({
  propTypes: {
  		label: React.PropTypes.string
  },

	getInitialState () {
		return {
			date: this.props.day
		};
	},

	onChange(date) {
		this.setState({date});
    FilterActions.updateDate(date);
	},

	render () {
		return (
			<div className="search-guests">
        <DateField
          forceValidDate
          defaultValue={this.state.date}
          dateFormat="MMM D, YYYY"
          onChange={this.onChange}
        />
			</div>
		);
	}
});

module.exports = DateForm;
