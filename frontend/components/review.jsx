"use strict";

const React = require('react');

const Review = React.createClass({
  displayUser(id) {
    if (id === 1) {
      return "Guest - ";
    } else {
      const byline = "Member " + id + " - ";
      return byline;
    }
  },

  calendarDate(date) {
    const idx = date.indexOf('T');
    return date.substring(0, idx);
  },

  render() {
    if (!this.props.review) {
      return ( <div className="no-review"></div> );
    } else {
      return (
        <div className="single-review">
          <ul>
            <li>{this.props.review.body}</li>
            <li>
              {this.displayUser(this.props.review.user_id)}
              {this.calendarDate(this.props.review.date)}
            </li>
          </ul>
        </div>
      );
    }
  }
});

module.exports = Review;
