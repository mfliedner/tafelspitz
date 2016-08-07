"use strict";

const AppDispatcher = require('../dispatcher/dispatcher');
const SessionConstants = require('../constants/session_constants');
const SessionApiUtil = require('../util/session_api_util');
const ErrorActions = require('./error_actions');
const hashHistory = require('react-router').hashHistory;

const SessionActions = {

  signUp(formData){
    SessionApiUtil.signUp(formData,
      this.receiveCurrentUser,
      ErrorActions.setErrors);
  },

  logIn(formData, cb){
    SessionApiUtil.logIn(formData,
      this.receiveCurrentUser,
      ErrorActions.setErrors, cb);
  },

  logOut() {
    SessionApiUtil.logOut(this.removeCurrentUser);
  },

  fetchCurrentUser(complete){
    SessionApiUtil.fetchCurrentUser(this.receiveCurrentUser, complete);
  },

  receiveCurrentUser(currentUser) {
    AppDispatcher.dispatch({
      actionType: SessionConstants.LOGIN,
      currentUser: currentUser
    });
  },

  removeCurrentUser() {
    AppDispatcher.dispatch({
      actionType: SessionConstants.LOGOUT
    });
    // hashHistory.push("/login");
  }

};

module.exports = SessionActions;
