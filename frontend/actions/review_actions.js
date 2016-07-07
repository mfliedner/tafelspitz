const ApiUtil = require('../util/review_api_util');
const AppDispatcher = require('../dispatcher/dispatcher');
const ReviewConstants = require('../constants/review_constants');
const SessionStore = require('../stores/session_store');

module.exports = {
  fetchReviews () {
    ApiUtil.fetchReviews(restaurant_id, this.receiveAll);
  },

  getReview (id) {
    ApiUtil.getReview(restaurant_id, id, this.receiveReview);
  },

  createReview (data) {
    ApiUtil.createReview(restaurant_id, data, this.receiveReview);
  },

  receiveAll (reviews) {
    AppDispatcher.dispatch({
      actionType: ReviewConstants.REVIEWS_RECEIVED,
      reviews: reviews
    });
  },

  receiveReview (review) {
    AppDispatcher.dispatch({
      actionType: ReviewConstants.REVIEW_RECEIVED,
      review: review
    });
  }
};
