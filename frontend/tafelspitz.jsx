"use strict";

// React
const React = require('react');
const ReactDOM = require('react-dom');
// Router
const ReactRouter = require('react-router');
const Router = ReactRouter.Router;
const Route = ReactRouter.Route;
const IndexRoute = ReactRouter.IndexRoute;
const hashHistory = ReactRouter.hashHistory;
// Modal
const Modal = require('react-modal');
// Components
const App = require('./components/app');
const Search = require('./components/search');
const Profile = require('./components/profile');
const Reservation = require('./components/reservation');
const RestaurantForm = require('./components/restaurant_form');
const RestaurantShow = require('./components/restaurant_show');
// Auth
const SessionStore = require('./stores/session_store');
const SessionActions = require('./actions/session_actions');

function _ensureUserFetched(nextState, replace, asyncDoneCallback){
  if ( SessionStore.currentUserHasBeenFetched() ) {
    asyncDoneCallback();
  } else {
    SessionActions.fetchCurrentUser(asyncDoneCallback);
  }
}

function _ensureLoggedIn(nextState, replace) {
  if (!SessionStore.isUserLoggedIn()) {
    replace('/login');
  }
}

const routes = (
  <Router history={ hashHistory }>
    <Route path="/" component={ App }>
      <Route path="/restaurants/new" component={ RestaurantForm } onEnter={ _ensureLoggedIn }/>
    </Route>
    <Route path="/restaurants/:restaurantId" component={ RestaurantShow }/>
    <Route path="/reservations/:reservationId" component={ Reservation }/>
    <Route path="/users/:userId/reservations" component={ Profile }/>
  </Router>
);

document.addEventListener("DOMContentLoaded", function () {
  if (window.currentUser) {
    SessionActions.receiveCurrentUser(window.currentUser);
  }
  Modal.setAppElement(document.body);
  ReactDOM.render(<Router history={hashHistory}>{routes}</Router>,
    document.getElementById('content'));
});
