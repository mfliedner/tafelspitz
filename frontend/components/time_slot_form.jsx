"use strict";

const React = require('react');
import 'react-select/dist/react-select.css';
const DisplayConstants = require('../constants/display_constants');
const FilterConstants = require('../constants/filter_constants');
const FilterActions = require('../actions/filter_actions');
const Select = require('react-select');

const TimeSlotForm = React.createClass({
  propTypes: {
  		label: React.PropTypes.string
  },

  getOptions() {
    let options = [];
    for(let i = 0; i < DisplayConstants.TIME_SLOTS.length; i++) {
        options.push( {value: i, label: DisplayConstants.TIME_SLOTS[i]} );
    }
    return options;
  },

	getInitialState () {
		return {
			options: this.getOptions(),
			value: FilterConstants.DEFAULT_TIME_SLOT
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
