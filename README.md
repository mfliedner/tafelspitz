# Tafelspitz

[Heroku link][heroku]

[heroku]: https://tafelspitz.herokuapp.com

## Description

Tafelspitz demonstrates an online real-time restaurant reservation service.
It specializes in Restaurants with German and Central-European cuisine in
the San Francisco Bay Area (seed database).  The database can be searched
through criteria entered in the search bar or by map location: by default
all restaurants within the area displayed on the root page map are listed.
The list is updated whenever the map view changes (zoom or translation).

### For Users (Diners)

Tafelspitz allows users to search for restaurants and reservations based
on parameters including times, dates, location and price range. Users who
have registered their email address with the system receive a confirmation
of their reservation. They can review restaurants they have visited and
rate them based on food, service, ambience, and value.  They can maintain
a list of their favorite restaurants.

### For Restaurateurs

Registered users can add their own restaurants to the database to manage
their reservations (RESTAURATEUR button in the footer section).
They have to provide at a minimum the name and address of the restaurants
and a description with price range and an optional menu. The system also
handles opening times and seating capacity.  Although the purpose of the
service is to show German cuisine in the San Francisco Bay area, Tafelspitz
does not limit additions to its database by geography or menu.

### The Scheduler

For demonstration purposes, the reservation scheduler makes the following
simplifying assumptions: their is only one continuous opening period per
day (all day by default) that does not vary with date or day of the week,
seating capacity is fixed (unlimited by default), booking time slots are
fixed to 30 minute intervals.  The search function is limited to restaurant
names at this time, although any other piece of information in the database
could easily be exploited.  The search field presents the user with a
list of matching restaurants (any part of the name can be matched). The
"View all listed restaurants" link removes all previous filters (including
the map window).

The "Find a Table" search will filter the restaurant listing by the criteria
selected in the search bar, defaults apply to unselected criteria.  The
analogous "Make Reservation" search bar on each restaurant's show page
registers a reservation with the selected parameters in the user's account.

### The Name

Tafelspitz (German, literally meaning tip (of meat) for the table) is
boiled veal or beef in broth, served with a mix of minced apples and
horseradish. It is considered to be one of the many national dishes of
Austria and is equally popular in the neighboring German state of Bavaria
([Wikipedia Reference][reference]).
[reference]: https://en.wikipedia.org/wiki/Tafelspitz

This application is inspired by Opentable (check it out through the
DISCOVER link).
