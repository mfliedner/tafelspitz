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
        <div>
          <ul className="single-review">
            <li className="review-body">{this.props.review.body}</li>
            <li className="review-byline">
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
