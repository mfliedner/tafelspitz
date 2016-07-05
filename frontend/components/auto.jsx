"use strict";

const React = require('react');
const FilterActions = require('../actions/filter_actions');

const AutoComplete = React.createClass({
  getInitialState() {
    return { inputVal: "" };
  },

  handleInput(event) {
    this.setState({ inputVal: event.currentTarget.value });
  },

  matches() {
    const matches = [];
    if(this.state.inputVal.length === 0){
      return [];
    }

    this.props.list.forEach(item => {
      if (item.toLowerCase().indexOf(this.state.inputVal) !== -1) {
        matches.push(item);
      }
    });

    return matches;
  },

  selectItem(event) {
    let item = event.currentTarget.innerText;
    this.setState({ inputVal: item });
    FilterActions.updateName(item);
  },

  render() {
    let results = this.matches().map((result, i) => {
      return (
          <li key={i} onClick={this.selectItem}>{result}</li>
      );
    });

    return(
      <div className="search-text">
        <input type="text" onChange={this.handleInput}
               value={this.state.inputVal}
               placeholder="Search by Name"/>
        <ul>{results}</ul>
      </div>
    );
  }
});

module.exports = AutoComplete;
