"use strict";

const React = require('react');
import 'react-select/dist/react-select.css';
const DisplayConstants = require('../constants/display_constants');
const FilterActions = require('../actions/filter_actions');
const Select = require('react-select');

const GuestsForm = React.createClass({
  propTypes: {
  		label: React.PropTypes.string
  },

  getOptions() {
    let options = [{value: 1, label: "1 person"}];
    let item;
    for(let i = 2; i < 21; i++) {
        item = i + " people";
        options.push( {value: i, label: item} );
    }
    return options;
  },

	getInitialState () {
		return {
			options: this.getOptions(),
			value: 2
		};
	},

	onChange(value) {
		this.setState({value});
    FilterActions.updateGuests(value);
	},

	render () {
		return (
			<div className="search-guests">
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

module.exports = GuestsForm;
