"use strict";

const DisplayConstants = {
  PRICE_RANGE: ["All Prices", "Price range unknown", "$30 and under", "$31 to $50", "$50 and over"],
  TIME_SLOTS: ["12:00 AM", "12:30 AM", "1:00 AM", "1:30 AM", "2:00 AM", "2:30 AM",
    "3:00 AM", "3:30 AM", "4:00 AM", "4:30 AM", "5:00 AM", "5:30 AM", "6:00 AM", "6:30 AM",
    "7:00 AM", "7:30 AM", "8:00 AM", "8:30 AM", "9:00 AM", "9:30 AM", "10:00 AM", "10:30 AM",
    "11:00 AM", "11:30 AM", "12:00 PM", "12:30 PM", "1:00 PM", "1:30 PM", "2:00 PM", "2:30 PM",
    "3:00 PM", "3:30 PM", "4:00 PM", "4:30 PM", "5:00 PM", "5:30 PM", "6:00 PM", "6:30 PM",
    "7:00 PM", "7:30 PM", "8:00 PM", "8:30 PM", "9:00 PM", "9:30 PM", "10:00 PM", "10:30 PM",
    "11:00 PM", "11:30 PM"],
  LIKED: "\u2665",
  NOT_LIKED: "\u2661",
  DEFAULT_CENTER_LAT: 37.773972,
  DEFAULT_CENTER_LNG: -122.431297,
  DEFAULT_MAP_ZOOM: 12,
  WIDE_ZOOM: 8,
  NARROW_ZOOM: 13,
  STATIC_MAP_API: "http://maps.google.com/maps/api/staticmap?center=",
  STATIC_MAP_PARAMS: "&size=772x136&zoom=15&scale=2&maptype=roadmap&format=jpg&markers=icon%3Ahttp%3A%2F%2Fmedia.otstatic.com%2Fimg%2Fmap-marker-blue-1e9959e1eab6a1311c5bc48b4086b596.png%7C"
};

module.exports = DisplayConstants;
