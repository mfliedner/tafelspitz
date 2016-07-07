"use strict";

const React = require('react');
const hashHistory = require('react-router').hashHistory;
const RestaurantActions = require('../actions/restaurant_actions');

const ReviewForm = React.createClass({
  getInitialState() {
    return { rating: 5, body: "" };
  },

  navigateToRestaurantShow() {
    const restaurantUrl = "/restaurants/" + this.props.params.restaurantId;
    hashHistory.push(restaurantUrl);
  },

  handleCancel(event) {
    event.preventDefault();
    this.navigateToRestaurantShow();
  },

  handleSubmit(event) {
    event.preventDefault();
    const review = Object.assign(
      {},
      this.state,
      { restaurant_id: this.props.params.restaurantId }
    );
    RestaurantActions.createReview(review);
    this.navigateToRestaurantShow();
  },

  update(property) {
    return (e) => this.setState({[property]: e.target.value});
  },

  render() {
    return (
      <div className="review-form">
        <form onSubmit={this.handleSubmit}>
          <label>Rating</label>
          <br/>
          <input type="number"
            value={this.state.rating}
            onChange={this.update("rating")}/>
          <br/>

          <label>Comment</label>
          <br/>
          <textarea
            cols='30'
            rows='10'
            value={this.state.body}
            onChange={this.update("body")}></textarea>
          <br/>
          <input type="submit"/>
        </form>
        <button onClick={this.handleCancel}>Cancel</button>
      </div>
    );
 }
});

module.exports = ReviewForm;
