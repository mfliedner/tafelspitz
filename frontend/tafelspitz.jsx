"use strict";

//React
const React = require('react');
const ReactDOM = require('react-dom');
//Router
const ReactRouter = require('react-router');
const Router = ReactRouter.Router;
const Route = ReactRouter.Route;
const IndexRoute = ReactRouter.IndexRoute;
const hashHistory = ReactRouter.hashHistory;
// Components
const App = require('./components/app');
// const Search = require('./components/search');
const LoginForm = require('./components/login_form');
const SignupForm = require('./components/signup_form');
//Auth
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
    <Route path="/" component={ App } onEnter={ _ensureUserFetched }>
      <Route path="/login" component={ LoginForm } />
      <Route path="/signup" component={ SignupForm } />
    </Route>
  </Router>
);

document.addEventListener("DOMContentLoaded", function () {
  if (window.currentUser) {
    SessionActions.receiveCurrentUser(window.currentUser);
  }
  ReactDOM.render(<Router history={hashHistory}>{routes}</Router>,
    document.getElementById('content'));
});
