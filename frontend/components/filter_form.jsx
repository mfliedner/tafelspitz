"use strict";

const React = require('react');
const FilterActions = require('../actions/filter_actions');

const Filters = React.createClass({
  render() {
    return (
      <div>
        <span className="filter"></span>
      </div>
    );
  }
});

module.exports = Filters;
