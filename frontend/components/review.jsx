"use strict";

const React = require('react');

var Review = React.createClass({
  render() {
    // debugger
    if (!this.props.review) {
      return ( <div className="no-review"></div> );
    } else {
      return (
        <div className="single-review">
          <ul>
            <li>{this.props.review.body}</li>
            <li>Member{this.props.review.user_id} - {this.props.review.date}</li>
          </ul>
        </div>
      );
    }
  }
});

module.exports = Review;
