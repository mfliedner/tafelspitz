"use strict";

const React = require('react');
const SessionActions = require('../actions/session_actions');
const SessionStore = require('../stores/session_store');
const ErrorStore = require('../stores/error_store');

const SignupForm = React.createClass({

	contextTypes: {
		router: React.PropTypes.object.isRequired
	},

  getInitialState() {
    return {
      email: "",
			password: "",
			first_name: "",
			last_name: "",
			phone: ""
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
			password: this.state.password,
			first_name: this.state.first_name,
			last_name: this.state.last_name,
			phone: this.state.phone
		};

		SessionActions.signUp(formData);
		this.props.closeModal();
	},

  fieldErrors(field) {
    const errors = ErrorStore.formErrors(this.signup);

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
			<div className="signup-form-container">
				<form onSubmit={this.handleSubmit} className="signup-form-box">
					<div className="login-title">
	        	Welcome to Tafelspitz!
					</div>

	        { this.fieldErrors("base") }
					<div className="signup-form">
						<br/>
						<label> First Name:
		          { this.fieldErrors("first_name") }
							<input type="text"
		            value={this.state.first_name}
		            onChange={this.update("first_name")}
								className="signup-input"
								placeholder="First Name"/>
						</label>

						<br/>
						<label> Last Name:
		          { this.fieldErrors("last_name") }
							<input type="text"
		            value={this.state.last_name}
		            onChange={this.update("last_name")}
								className="signup-input"
								placeholder="Last Name"/>
						</label>

						<br/>
						<label> Email:
		          { this.fieldErrors("email") }
							<input type="text"
		            value={this.state.email}
		            onChange={this.update("email")}
								className="signup-input"
								placeholder="Enter email"/>
						</label>

						<br/>
						<label> Telephone Number:
		          { this.fieldErrors("phone") }
							<input type="text"
		            value={this.state.phone}
		            onChange={this.update("phone")}
								className="signup-input"
								placeholder="Enter telephone number (optional)"/>
						</label>

		        <br/>
						<label> Password:
		          { this.fieldErrors("password") }
		          <input type="password"
		            value={this.state.password}
		            onChange={this.update("password")}
								className="signup-input"
								placeholder="Enter password"/>
						</label>

		        <br/>
						<input type="submit" value="Create Account" />
					</div>
				</form>
			</div>
		);
	}
});

module.exports = SignupForm;
