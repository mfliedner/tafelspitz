const Store = require('flux/utils').Store;
const ReservationConstants = require('../constants/reservation_constants.js');
const AppDispatcher = require('../dispatcher/dispatcher.js');

const ReservationStore = new Store(AppDispatcher);

let _reservations = {};

const resetReservations = function (reservations) {
  _reservations = reservations;
};

const setReservation = function (reservation) {
  _reservations[reservation.id] = reservation;
};

const removeReservation = function (reservation) {
  delete _reservations[reservation.id];
};

ReservationStore.all = function () {
  return _reservations.reservation_items;
};

ReservationStore.__onDispatch = function (payload) {
  switch (payload.actionType) {
    case ReservationConstants.RESERVATIONS_RECEIVED:
      resetReservations(payload.reservations);
      break;
    case ReservationConstants.RESERVATION_RECEIVED:
      setReservation(payload.reservation);
      break;
    case ReservationConstants.RESERVATION_REMOVED:
      removeReservation(payload.reservation);
      break;
  }
  ReservationStore.__emitChange();
};

module.exports = ReservationStore;
