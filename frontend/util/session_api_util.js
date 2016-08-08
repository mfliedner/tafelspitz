"use strict";

const SessionApiUtil = {
	logIn(user, success, error, cb) {
		$.ajax({
			url: '/api/session',
			method: 'POST',
			data: { user },
			success,
			error(xhr) {  // deprecated
				const errors = xhr.responseJSON;
				error("login", errors);
			}
		}).fail(function(xhr, status, error) {
			const message = xhr.responseJSON;
			alert(message.base[0]);
			cb();
		});
	},

	logOut(success) {
		$.ajax({
			url: '/api/session',
			method: 'DELETE',
			success
		});
	},

	signUp(user, success, error, cb) {
		$.ajax({
			url: '/api/users',
			method: 'POST',
			data: { user },
			success,
			error(xhr) { // deprecated
				const errors = xhr.responseJSON;
				error("signup", errors);
			}
		}).fail(function(xhr, status, error) {
			const response = xhr.responseJSON;
			let message = "";
			if (!!response.email) {
				message += "Email " + response.email[0];
			}
			if (!!response.password) {
				if (!!response.email) {
					message += "\n";
				}
				message += "Password " + response.password[0];
			}
			alert(message);
			cb();
		});
	},

	fetchCurrentUser(success, complete) {
		$.ajax({
			url: '/api/session',
			method: 'GET',
			success,
      complete: function(){
				complete();
			}
		});
	}
};

module.exports = SessionApiUtil;
