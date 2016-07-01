"use strict";

const React = require('react');
const Search = require('./search');

const Content = React.createClass({
  render() {
    return (
      <div className="content">
        <div className="content-header">
          <div className="column">    
            <h1 className="content-header-title">GERMAN CUISINE IN SAN FRANCISCO</h1>
            <h2>Make a free reservation</h2>
          </div>
        </div>
        <Search/>
      </div>
    );
  }
});

module.exports = Content;
