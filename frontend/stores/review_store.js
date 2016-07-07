const Store = require('flux/utils').Store;
const ReviewConstants = require('../constants/review_constants.js');
const AppDispatcher = require('../dispatcher/dispatcher.js');

const ReviewStore = new Store(AppDispatcher);

let _reviews = {};

const resetReviews = function (reviews) {
  _reviews = reviews;
};

const setReview = function (review) {
  _reviews[review.id] = review;
};

ReviewStore.all = function () {
  return Object.assign({}, _reviews);
};

ReviewStore.find = function (id) {
  return Object.assign({}, _reviews[id]);
};

ReviewStore.__onDispatch = function (payload) {
  switch (payload.actionType) {
    case ReviewConstants.REVIEWS_RECEIVED:
      resetReviews(payload.reviews);
      break;
    case ReviewConstants.RESERVATION_RECEIVED:
      setReview(payload.review);
      break;
  }
  ReviewStore.__emitChange();
};

module.exports = ReviewStore;
