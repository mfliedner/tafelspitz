module.exports = {
  fetchReservations (user_id, cb) {
    $.ajax({
      url: `api/users/${user_id}/reservations`,
      success (reservations) {
        cb(reservations);
      }
    });
  },

  getReservation (user_id, id, cb) {
    $.ajax({
      url: `api/users/${user_id}/reservations/${id}`,
      success (reservation) {
        cb(reservation);
      }
    });
  },

  createReservation (user_id, data, cb_success, cb_fail) {
    $.ajax({
      url: `api/users/${user_id}/reservations`,
      type: "POST",
      data: { reservation: data },
      success (reservation) {
        cb_success(reservation);
      }
    }).fail(function(xhr, status, error) {
      alert("No reservation available!");
      cb_fail();
		});
  },

  updateReservation (user_id, data, cb) {
    $.ajax({
      url: `api/users/${user_id}/reservations/${data.id}`,
      type: "PATCH",
      data: { reservation: { restaurant_id: data.restaurant_id,
                             date: data.date,
                             time: data.time,
                             guest_count: data.guest_count,
                             requests: data.requests } },
      success (reservation) {
        cb(reservation);
      }
    });
  },

  deleteReservation (user_id, data, success, cb_done) {
    $.ajax({
      url: `api/users/${user_id}/reservations/${data.id}`,
      type: "DELETE",
      data: { reservation: data },
      success
    }).done(function() {
      cb_done();
		});
  }
};
