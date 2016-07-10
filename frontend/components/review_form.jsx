"use strict";

const React = require('react');
const hashHistory = require('react-router').hashHistory;
const ReviewActions = require('../actions/review_actions');
const StarRatingComponent = require('react-star-rating-component');

const ReviewForm = React.createClass({
  getInitialState() {
    return {
      rating: 1,
      rate_food: 0,
      rate_ambience: 0,
      rate_service: 0,
      rate_value: 0,
      body: "",
      date: this.props.reservation.date,
      restaurant_id: this.props.reservation.restaurant_id
    };
  },

  navigateToRestaurantShow() {
    const restaurantUrl = "/restaurants/" + this.props.reservation.restaurant_id;
    hashHistory.push(restaurantUrl);
  },

  onStarClick(stars, initial, name) {
    this.setState({[name]: stars});
  },

  handleSubmit(event) {
    event.preventDefault();
    const review = Object.assign({}, this.state);
    ReviewActions.createReview(this.props.reservation.restaurant_id, review);
    this.navigateToRestaurantShow();
  },

  update(property) {
    return (e) => this.setState({[property]: e.target.value});
  },

  render() {
    const starColor = "#DA3743";

    return (
      <div className="review-container">
        <div className="review-form">
          <div className="review-title">Rate Your Dining Experience</div>
          <form onSubmit={this.handleSubmit}>
            <div className="rating-field">
              <label>{"Overall (required)"}</label>
              <StarRatingComponent
                  className="star-rating"
                  name="rating"
                  starCount={5}
                  value={this.state.rating}
                  starColor={starColor}
                  editing={true}
                  onStarClick={this.onStarClick}
              />
            </div>
            <div className="review-field">
              <label>Food</label>
              <StarRatingComponent
                  className="star-rating-food"
                  name="rate_food"
                  starCount={5}
                  value={this.state.rate_food}
                  starColor={starColor}
                  editing={true}
                  onStarClick={this.onStarClick}
              />
            </div>
            <div className="review-field">
              <label>Ambience</label>
              <StarRatingComponent
                  className="star-rating-ambience"
                  name="rate_ambience"
                  starCount={5}
                  value={this.state.rate_ambience}
                  starColor={starColor}
                  editing={true}
                  onStarClick={this.onStarClick}
              />
            </div>
            <div className="review-field">
              <label>Service</label>
              <StarRatingComponent
                  className="star-rating-service"
                  name="rate_service"
                  starCount={5}
                  value={this.state.rate_service}
                  starColor={starColor}
                  editing={true}
                  onStarClick={this.onStarClick}
              />
            </div>
            <div className="review-field">
              <label>Value</label>
              <StarRatingComponent
                  className="star-rating-value"
                  name="rate_value"
                  starCount={5}
                  value={this.state.rate_value}
                  starColor={starColor}
                  editing={true}
                  onStarClick={this.onStarClick}
              />
            </div>

            <label className="review-body-label">Write a review</label>
            <textarea value={this.state.body}
              placeholder="Write a review ..."
              className="review-body"
              onChange={this.update("body")}></textarea>
            <br/>
            <input type="submit" value="Submit your review"
                   className="new-review-button"/>
          </form>
        </div>
      </div>
    );
 }
});

module.exports = ReviewForm;
