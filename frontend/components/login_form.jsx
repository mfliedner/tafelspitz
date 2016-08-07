"use strict";

const React = require('react');
const SessionActions = require('../actions/session_actions');
const SessionStore = require('../stores/session_store');
const ErrorStore = require('../stores/error_store');

const LoginForm = React.createClass({

	contextTypes: {
		router: React.PropTypes.object.isRequired
	},

  getInitialState() {
    return {
      email: "",
			password: ""
    };
  },

  componentDidMount() {
    this.errorListener = ErrorStore.addListener(this.forceUpdate.bind(this));
    this.sessionListener = SessionStore.addListener(this.redirectIfLoggedIn);
  },

  componentWillUnmount() {
    this.errorListener.remove();
    this.sessionListener.remove();
  },

  redirectIfLoggedIn() {
    if (SessionStore.isUserLoggedIn()) {
      this.context.router.push("/");
    }
  },

	handleSubmit(event) {
		event.preventDefault();

		const formData = {
			email: this.state.email,
			password: this.state.password
		};

    SessionActions.logIn(formData, this.reopen);
		this.props.closeModal();
		this.context.router.push("/");
	},

	reopen() {
		this.props.reopenModal();
	},

  fieldErrors(field) {
    const errors = ErrorStore.formErrors("login");

    if (!errors[field]) { return; }

    const messages = errors[field].map( (errorMsg, i) => {
      return <li key={ i }>{ errorMsg }</li>;
    });

    return <ul>{ messages }</ul>;
  },

  update(property) {
    return (e) => this.setState({[property]: e.target.value});
  },

	render() {
		return (
			<div className="login-form-container">
				<form onSubmit={this.handleSubmit} className="login-form-box">
	        <div className="login-title">
						Welcome to Tafelspitz! Please sign in
					</div>

	        { this.fieldErrors("base") }
					<div className="login-form">
						<label>Email</label>
		          { this.fieldErrors("email") }
							<input type="text"
		            value={this.state.email}
		            onChange={this.update("email")}
								placeholder="Email"
								className="login-input" />

						<label>Password</label>
		          { this.fieldErrors("password") }
		          <input type="password"
		            value={this.state.password}
		            onChange={this.update("password")}
								placeholder="Password"
								className="login-input" />

						<input type="submit" value="Sign In" />
					</div>
				</form>
			</div>
		);
	}
});

module.exports = LoginForm;
