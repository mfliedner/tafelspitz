const ApiUtil = require('../util/reservation_api_util');
const AppDispatcher = require('../dispatcher/dispatcher');
const ReservationConstants = require('../constants/reservation_constants');
const SessionStore = require('../stores/session_store');

module.exports = {
  fetchReservations () {
    ApiUtil.fetchReservations(SessionStore.currentUser().id, this.receiveAll);
  },

  getReservation (id) {
    ApiUtil.getReservation(SessionStore.currentUser().id, id, this.receiveReservation);
  },

  createReservation (data, cb) {
    ApiUtil.createReservation(SessionStore.currentUser().id, data, this.receiveReservation, cb);
  },

  editReservation (data) {
    ApiUtil.updateReservation(SessionStore.currentUser().id, data, this.receiveReservation);
  },

  deleteReservation (id) {
    ApiUtil.deleteReservation(SessionStore.currentUser().id, id, this.removeReservation);
  },

  receiveAll (reservations) {
    AppDispatcher.dispatch({
      actionType: ReservationConstants.RESERVATIONS_RECEIVED,
      reservations: reservations
    });
  },

  receiveReservation (reservation) {
    AppDispatcher.dispatch({
      actionType: ReservationConstants.RESERVATION_RECEIVED,
      reservation: reservation
    });
  },

  removeReservation (reservation) {
    AppDispatcher.dispatch({
      actionType: ReservationConstants.RESERVATION_REMOVED,
      reservation: reservation
    });
  }
};
