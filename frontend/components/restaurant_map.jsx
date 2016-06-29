"use strict";

const React = require('react');
const ReactDOM = require('react-dom');
const FilterActions = require('../actions/filter_actions');
const hashHistory = require('react-router').hashHistory;

const _getCoordsObj = function(latLng) {
  return ({
    lat: latLng.lat(),
    lng: latLng.lng()
  });
}

const mapOptions = {
  center: {lat: 37.773972, lng: -122.431297}, //San Francisco
  zoom: 13
};

const MapContainer = React.createClass({
  componentDidMount() {
    const map = ReactDOM.findDOMNode(this.refs.map);
    this.map = new google.maps.Map(map, mapOptions);
    this.markers = [];
    this.registerListeners();
    this._onChange();
  },

  markersToRemove(){
    return this.markers.filter( marker => {
      return !this.props.restaurants.hasOwnProperty(marker.restaurantId);
    });
  },

  restaurantsToAdd(){
    const currentRestaurantIds = this.markers.map( marker => marker.restaurantId );
    const newRestaurants = this.props.restaurants;
    const newRestaurantIds = Object.keys(newRestaurants);

    return newRestaurantIds.reduce( (collection, restaurantId) => {
      if (!currentRestaurantIds.includes(restaurantId)) {
        return ( collection.concat( [newRestaurants[restaurantId]] ));
      }
    }, [] );
  },

  componentDidUpdate() {
    this._onChange();
  },

  _onChange() {
    this.restaurantsToAdd().forEach(this.createMarkerFromRestaurant);
    this.markersToRemove().forEach(this.removeMarker);
  },

  _handleClick(coords) {
    hashHistory.push({
      pathname: "restaurants/new",
      query: coords
    });
  },

  registerListeners() {
    const that = this;
    google.maps.event.addListener(this.map, 'idle', () => {
      const mapBounds = that.map.getBounds();
      const northEast = _getCoordsObj(mapBounds.getNorthEast());
      const southWest = _getCoordsObj(mapBounds.getSouthWest());
      const bounds = { northEast, southWest };
      FilterActions.updateBounds(bounds);
    });
    google.maps.event.addListener(this.map, 'click', event => {
      const coords = { lat: event.latLng.lat(), lng: event.latLng.lng() };
      that._handleClick(coords);
    });
  },

  createMarkerFromRestaurant(restaurant) {
    const pos = new google.maps.LatLng(restaurant.lat, restaurant.lng);
    const marker = new google.maps.Marker({
      position: pos,
      map: this.map,
      restaurantId: restaurant.id
    });
    marker.addListener('click', () => {
      hashHistory.push("restaurants/" + restaurant.id );
    });
    this.markers.push(marker);
  },

  removeMarker(marker) {
    const idx = this.markers.indexOf( marker );
    this.markers[idx].setMap(null);
    this.markers.splice(idx, 1);
  },

  render() {
    return ( <div className="map" ref="map">Map</div>);
  }
});

module.exports = MapContainer;
