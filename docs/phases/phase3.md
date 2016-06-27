# Phase 3: Reservations (1.5 days)

## Rails
### Models
* Reservation

### Controllers
* Api::ReservationsController (create, destroy, index, update)

### Views
* restaurants/show.json.jbuilder

## Flux
### Views (React Components)
* ReservationSearch
* ReservationForm
* ReservationUpdate

### Stores
* Reservations

### Actions
* ApiActions.receiveReservation
* ApiActions.removeReservation
* ReservationActions.fetchAllReservations -> triggers ApiUtil
* ReservationActions.createReservation
* ReservationActions.updateReservation
* ReservationActions.deleteReservation

### ApiUtil
* ApiUtil.fetchAllReservations
* ApiUtil.fetchSingleReservation
* ApiUtil.createReservation
* ApiUtil.updateReservation
* ApiUtil.deleteReservation

## Gems/Libraries
