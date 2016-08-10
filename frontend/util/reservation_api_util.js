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

  createReservation (user_id, data, cb) {
    $.ajax({
      url: `api/users/${user_id}/reservations`,
      type: "POST",
      data: { reservation: data },
      success (reservation) {
        cb(reservation);
      }
    }).fail(function(xhr, status, error) {
			// const message = xhr.responseJSON;
      alert("No reservation available!");
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

  deleteReservation (user_id, id, cb) {
    $.ajax({
      url: `api/users/${user_id}/reservations/${id}`,
      type: "DELETE",
      success (reservation) {
        cb(reservation);
      }
    });
  }
};
