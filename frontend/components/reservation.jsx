"use strict";

const React = require('react');
const Link = require('react-router').Link;
const hashHistory = require('react-router').hashHistory;
const ReactRouter = require('react-router');
const Modal = require('react-modal');
const ModalStyle = require('../util/modal_style');
const ReviewForm = require('./review_form');

const Reservation = React.createClass({
  getInitialState: function() {
    return({
      modalOpen: false
    });
  },

  closeModal: function() {
    this.setState({ modalOpen: false });
    ModalStyle.content.opacity = 0;
  },

  openModal: function() {
    ModalStyle.content.opacity = 100;
  },

  _handleForm: function() {
    this.setState({
      modalOpen: true
    });
  },

  _handleClick() {
    // const restaurantID = this.props.reservation.restaurant_id;
    // hashHistory.push("restaurants/" + restaurantID );
  },

  seating(n) {
    let rest = "people";
    if (this.props.reservation.guest_count === 1) {
      rest = "person";
    }
    return (
      <div className ="seating">
        Table for {this.props.reservation.guest_count} {rest}
      </div>
    )
  },

  calendarDate(date) {
    const idx = date.indexOf('T');
    return date.substring(0, idx);
  },

  timing(time) {
    let meridiem = " AM";
    if (time > 43199) {
      meridiem = " PM";
      time -= 43200;
    }
    let h = Math.floor(time / 3600);
    if (h === 0) {
      h = 12;
    }
    const min = Math.round((time % 3600) / 60);
    let pad = ":";
    if (min < 10) {
      pad = ":0"
    }
    return ( h + pad + min + meridiem )
  },

  render() {
    const reservation = this.props.reservation;
    const route = "/restaurants/" + reservation.restaurant_id;
    let imgUrl = reservation.img_url;
    if (imgUrl.length < 5) {
      imgUrl = "/no-image.png";
    }
    return (
        <div className="restaurant-index-item">
          <div className="index-item-restaurant">
            <div className="index-item-image"
                 onClick={this._handleClick}
                 key={reservation.restaurant_id}>
              <Link to={route}>
                <img src={imgUrl} alt={reservation.name}/>
              </Link>
            </div>
            <div className="index-item-info">
              <div className="info-left group">
                <Link to={route} className="index-item-name">
                  {reservation.name}
                </Link>
                <div className="index-item-rating">
                  <button id="review-button" className="review-button"
                          onClick={this._handleForm}>
                    Write Review
                  </button>
                </div>
                <div className="index-item-count">
                  {this.seating(reservation.guest_count)}
                </div>
              </div>
              <div className="info-right group">
                <div className="index-item-category">
                  {this.calendarDate(reservation.date)}
                </div>
                <br/>
                <div className="index-item-category">
                  {this.timing(reservation.time)}
                </div>
              </div>
            </div>
            <div className="index-item-review">
            </div>
          </div>

          <Modal
            isOpen={this.state.modalOpen}
            onRequestClose={this.closeModal}
            onAfterOpen={this.openModal}
            style={ModalStyle}>
            <ReviewForm reservation={reservation} closeModal={this.closeModal}/>
            <button onClick={this.closeModal}>Cancel</button>
          </Modal>
        </div>
    );
  }
});

module.exports = Reservation;
