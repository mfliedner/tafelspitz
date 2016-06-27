# Flux Cycles

Flux loops are organized by data type. Under each data type, there may
be sub-categories, and each action is listed with the sequence of events
that result from its invocation, ending with the API or store. Finally,
store listeners are listed at the end.

You should be able to use this document trace an **action** starting
with where it was invoked, through the **API**/**store** involved, and
finally to the **components** that update as a result. This is important
because once you start implementing your flux loops, that's precisely
what you'll need to do.

## Session Cycles

### Session API Request Actions

* `signup`
  0. invoked from `App`
  0. `POST /api/users` is called.
  0. `receiveCurrentUser` is set as the callback.

* `login`
  0. invoked from `App`
  0. `POST /api/session` is called.
  0. `receiveCurrentUser` is set as the callback.

* `logout`
  0. invoked from `App`
  0. `DELETE /api/session` is called.
  0. `removeCurrentUser` is set as the callback.

* `fetchCurrentUser`
  0. invoked from `App`
  0. `GET /api/session` is called.
  0. `receiveCurrentUser` is set as the callback.

### Session API Response Actions

* `login`
  0. invoked from an API callback.
  0. `Session` store updates `_currentUser` and emits change.

* `logout`
  0. invoked from an API callback.
  0. `Session` store updates `_currentUser` and emits change.

### Store Listeners

* `App` component listens to `Session` store.
* `Restaurant` component listens to `Session` store.


## Restaurant Cycles

### Restaurant API Request Actions

* `fetchAllRestaurants`
  0. invoked from `RestaurantIndex` `didMount`/`willReceiveProps`
  0. `GET /api/restaurants` is called.
  0. `receiveAllRestaurants` is set as the callback.

* `addRestaurant`
  0. invoked from add-restaurant submit button `onClick`
  0. `POST /api/restaurants` is called.
  0. `receiveSingleRestaurant` is set as the callback.

* `addReview`
  0. invoked from add-review submit button `onClick`
  0. `POST /api/restaurants/:id/reviews` is called.
  0. `receiveSingleRestaurant` is set as the callback.

* `createReservation`
  0. invoked from `ReservationForm` submit button `onClick`
  0. `POST /api/restaurants/:id/reservations` is called.
  0. `receiveReservation` is set as the callback.

* `updateReservation`
  0. invoked from `ReservationUpdate` update button `onClick`
  0. `POATCH /api/restaurants/:id/reservations/:id` is called.
  0. `receiveReservation` is set as the callback.

* `deleteReservation`
  0. invoked from `ReservationUpdate` delete button `onClick`
  0. `DELETE /api/restaurants/:id/reservations/:id` is called.
  0. `removeReservation` is set as the callback.

* `fetchSingleRestaurant`
  0. invoked from `Restaurant` `didMount`/`willReceiveProps`
  0. `GET /api/restaurants/:id` is called.
  0. `receiveSingleRestaurant` is set as the callback.

* `createFavorite` `toggleFavorite`
  0. invoked from `Restaurant`
  0. `POST /api/favorites` is called.
  0. `receiveFavorite` is set as the callback.

* `deleteFavorite` `toggleFavorite`
  0. invoked from `Restaurant`
  0. `DELETE /api/favorites` is called.
  0. `removeFavorite` is set as the callback.

### Restaurant API Response Actions

* `receiveAllRestaurants`
  0. invoked from an API callback.
  0. `Restaurant` store updates `_restaurants` and emits change.

* `receiveSingleRestaurant`
  0. invoked from an API callback.
  0. `Restaurant` store updates `_restaurants[id]` and emits change.

* `receiveReservation`
  0. invoked from an API callback.
  0. `Reservation` store updates `_reservation[id]` and emits change.

* `removeReservation`
  0. invoked from an API callback.
  0. `Reservation` store updates `_reservation[id]` and emits change.

* `receiveFavorite`
  0. invoked from an API callback.
  0. `Restaurant` store updates `_restaurants[id]` and emits change.

* `removeFavorite`
  0. invoked from an API callback.
  0. `Restaurant` store updates `_restaurants[id]` and emits change.

### Store Listeners

* `RestaurantIndex` component listens to `Restaurant` store.
* `Restaurant` component listens to `Restaurant` store.
* `Restaurant` component listens to `Reservation` store.
* `ReservationSearch` component listens to `Restaurant` store.
