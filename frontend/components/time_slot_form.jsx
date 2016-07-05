"use strict";

const React = require('react');
import 'react-select/dist/react-select.css';
const DisplayConstants = require('../constants/display_constants');
const FilterActions = require('../actions/filter_actions');
const Select = require('react-select');

const TimeSlotForm = React.createClass({
  propTypes: {
  		label: React.PropTypes.string
  },

  getOptions() {
    let options = [];
    for(let i = 0; i < 48; i++) {
        options.push( {value: i, label: DisplayConstants.TIME_SLOT[i]} );
    }
    return options;
  },

	getInitialState () {
		return {
			options: this.getOptions(),
			value: 38
		};
	},

	onChange(value) {
		this.setState({value});
    FilterActions.updateTimeSlot(value);
	},

	render () {
		return (
			<div className="search-time">
				<Select
					onChange={this.onChange}
					options={this.state.options}
					simpleValue
					value={this.state.value}
				/>
			</div>
		);
	}
});

module.exports = TimeSlotForm;
