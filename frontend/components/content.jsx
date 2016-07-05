"use strict";

const React = require('react');
const Link = require('react-router').Link;
const FilterActions = require('../actions/filter_actions');
const FilterParamsStore = require('../stores/filter_params_store');
const Search = require('./search');
const SearchBar = require('./search_bar');

const Content = React.createClass({
  getInitialState() {
    return {
      // searchParams: SearchParamsStore.params()
      searchParams: {}
    };
  },

  _handleClick() {
    FilterActions.clearFilters();
  },

  render() {
    return (
      <div className="content">
        <div className="content-header">
          <div className="column">
            <h1 className="content-header-title">GERMAN CUISINE IN THE SAN FRANCISCO BAY AREA</h1>
            <h2>Make a free reservation</h2>
            <div className="search-bar">
              <SearchBar searchParams={this.state.searchParams}/>
            </div>
            <Link to="/" className="all-index-link" onClick={this._handleClick}>
              View all listed restaurants >
            </Link>
          </div>
        </div>
        <div className="content-page">
          <Search/>
        </div>
      </div>
    );
  }
});

module.exports = Content;
