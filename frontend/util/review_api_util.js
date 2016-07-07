module.exports = {
  fetchReviews (restaurant_id, cb) {
    $.ajax({
      url: `api/restaurants/${restaurant_id}/reviews`,
      success (reviews) {
        cb(reviews);
      }
    });
  },

  getReview (restaurant_id, id, cb) {
    $.ajax({
      url: `api/restaurants/${restaurant_id}/reviews/${id}`,
      success (review) {
        cb(review);
      }
    });
  },

  createReview (restaurant_id, data, cb) {
    $.ajax({
      url: `api/restaurants/${restaurant_id}/reviews`,
      type: "POST",
      data: { review: data },
      success (review) {
        cb(review);
      }
    });
  }
};
