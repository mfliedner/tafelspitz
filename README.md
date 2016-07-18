# Tafelspitz

[Live link][heroku]

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

![root]

## Implementation

The Tafelspitz application is built on a Ruby on Rails backend and a React.js
Flux pattern architecture frontend.

### Backend

At the core is a PostgreSQL object-relational database system.  The data
are organized into tables for users, restaurants, reservations, reviews,
and a favorites join table that connects users and their favorite restaurants.
Login and sign up are controlled by a sessions controller.  The database
is seeded with actual information from German restaurants in the San
Francisco Bay Area.  Guest login is handled through a seeded guest user
account.

#### User model and  users/session controller

The user access control is managed through the users and session controllers
through BCrypt password encoding.  Session tokens keep track of the currently
logged in user.

#### Restaurant model and controller

The restaurant and reservation tables form the center of this application.
New restaurants are generated through a frontend form.  Their location
is determined from their address with help of the Google Map API:

```ruby
def self.address_to_coords(address)
  query = "select *"
  url = "https://maps.googleapis.com/maps/api/geocode/json?address="
  url.concat(address.split.join("+"))
  api_key = "&key=#{ENV['gmap_key']}"
  url.concat(api_key)
  uri = URI(url)
  response = Net::HTTP.post_form(uri, { query => nil })
  body = JSON.parse(response.body)
  body["results"][0]["geometry"]["location"]
end
 ```

 The API key is secretly stored in a YAML database file.  The same API is
 used to filter the restaurant database based in geographical coordinates
 within the map window displayed in the browser and controlled by the user.

 Reservations are organized under their restaurant route and serve as the
 second filter for the restaurant table:

```ruby
 def self.available(list, params)
   unfiltered = params[:filter].start_with?("f") ? true : false
   name_known = !!params[:name] && params[:name].length > 0

   return list if list.empty? || unfiltered
   time = Reservation.time_slot_to_time(params[:time_slot].to_i)
   guest_count = params[:guest_count].to_i
   filtered = []

   if name_known
     filtered = self.where("opening < ?", time)
                    .where("closing > ?", time)
                    .where("seats > ?", guest_count)
                    .where("name = ?", params[:name])
   else
     filtered = self.where("opening < ?", time)
                    .where("closing > ?", time)
                    .where("seats > ?", guest_count)
   end
   return filtered if filtered.empty?

   reservations = Reservation.where("date = ?", params[:date])
                             .where("time = ?", time)
   avail = []
   filtered.each do |restaurant|
     taken = reservations.inject(0) { |res, table| res + table.guest_count }
     avail << restaurant if taken + guest_count <= restaurant.seats
   end
   avail
 end
 ```

 Database associations with the reservations, favorites, and reviews tables
 are used to streamline database AJAX queries from the frontend.

 Restaurants are classified by a four-point `:price_range` scale.

#### Reservation model and controller

Reservations are the only model that allows all standard Rails controls
of creation, show, editing, and deletion.  The model provides a simplified,
basic set of properties: `:date`, `:time`, `:guest_count`, as well as a
catch-all text property `:requests`.  The booking time is represented by
half hour time slots between single `Restaurant.opening` and `Restaurant.closing`
times.  The `:guest_count` may not exceed the `Restaurant.seats` capacity.
Foreign keys `:guest_id` and `:restaurant_id` link reservations to the users
and restaurants tables.

#### Review model and controller

The review model is analogous to the reservation model (linked to both users
and restaurants through foreign keys), but the controller only allows to
create, not to edit or destroy reviews.  Its properties are overall and
categorical ratings on a five-point "star" scale and a review text: `:rating`,
`:rate_food`, `:rate_ambience`, `:rate_service`, `:rate_value`, and `:body`.

#### Favorite model and controller

The relationship of users liking particular restaurants is expressed as a
simple join table on the backend and a toggle on the frontend:

```ruby
class Favorite < ActiveRecord::Base
  validates :user_id, :restaurant_id, presence: true
  validates :user_id, uniqueness: {scope: :restaurant_id}

	belongs_to :restaurant
	belongs_to :user
end
 ```

#### Views

As views are handled on the frontend, they are rendered as JSON objects by
the Rails controllers.  Restaurants are associated with reservations, reviews,
and favorites that are rendered together in the browser.  The controllers,
therefore, query the database through joins and use JBuilder to create
customized JSON objects in response to AJAX requests from the frontend:

```ruby
json.extract! restaurant, :id, :name, :description, :lat, :lng,
  :img_url, :price_range, :address, :phone, :menu, :average_rating,
  :count_rating

json.fans restaurant.fans.map(&:id)
json.reviews restaurant.reviews.map { |review| review }
 ```

### Frontend

The root page is divided into three main components:

a **header** containing
the logo ![logo], which serves as a link
back to the root page and resets user filters, and the user handling
logic of sign up, login, user page navigation, and logout;

a **content section** with the main search bar, restaurant listing, and
map control component;

![listing]

a **footer** with links to the original website, the README, and the
restaurant entry form for restaurateur users.

User and show pages for individual restaurants follow the same organization
into header, main content, and footer.

There are two different content sections for the user pages: reservations
and review form links reached from the profile and review menu items, and
favorites, which modify the root restaurant items listing by filtering out
the user's favorites and replacing the review display with a reservation
link.

![reservation]
![favorite]

```javascript
const RestaurantIndex = React.createClass({
  render() {
    let heading = "No Availability";
    const restaurants = this.props.restaurants;
    const restaurantKeys = Object.keys(restaurants);
    let ent = " tables";
    if(!restaurants || restaurantKeys.length < 1) {
      return (
        <div>
          <div className="section-header">{heading}</div>
          <div className="section"></div>
        </div>
      );
    }
    if (restaurantKeys.length === 1) {
      ent = " table";
    }
    if (this.props.filter === "favorites") {
      heading = "Favorites"
    } else {
      heading = restaurantKeys.length + ent + " available";
    }
    return (
      <div>
        <div className="section-header">{heading}</div>
        <div className="section">
          {
            restaurantKeys.map( key => {
              return (<IndexItem
                filter={this.props.filter}
                restaurant={restaurants[key]}
                key={key} />);
            })
          }
        </div>
      </div>
    );
  }
});
 ```

The restaurant show page content consists of a summary header and a list
of sections: Make reservation, About the restaurant with a static location
map, menu, and reviews listing.  A sidebar with fixed positioning provides
links to each section.

![restaurant]
![about]
![rating]

#### Flux cycles

Frontend dataflow is organized into the following React flux pattern cycles
of view -> action -> dispatcher -> store:

Session handling login/logout and the favorite toggle for the current user,

Restaurant handling display of restaurant information based on

Filter parameters entered via search bar, Google map, and like buttons,

Reservations and Reviews are dispatched to and retrieved from the database
under the associated restaurantID route.

#### Map

The live map on the root page is implemented with the Google Map API.  It
controls the restaurant display based on the the displayed map window.
It triggers the bounds filter actions that update the restaurant store
from the database.  Restaurant markers are dynamically generated and
removed.  Clicking on a marker brings up the associated restaurant show
page.  The Google Map API also provides the static map display on the
show pages.

![listing]

#### Forms

User entry forms and alert messages are realized as react-modal components
that interrupt the normal interaction flow.  There are entry forms for
sign up, login, new restaurants, and reviews.  Inside the search bars time
slot and guest number selection are implemented as react-select drop-down
menus, the calendar date picker uses a react-date-picker DateField component.
The name search field returns a list of matches from the Flux restaurant
store.

Modal alert forms are triggered when users try to access content reserved
for registered users (this includes the guest account for demo purposes):
reservations, reviews, favorites, and new restaurants.

#### Ratings

Passive (display) and active (reviewer input) star ratings are implemented
as react-star-rating-components.

### TODO list

I am planning to improve and expand this project in the future.  Here are
some of the next steps

#### Separation of reservations in past and upcoming

only past reservations will allow reviews

upcoming reservations can be changed and cancelled

#### Search based on location and additional criteria

auto-complete search extended to cities (culled from address); drop-down
menu selection for price range and ratings

#### Dedicated reviews page

containing a unique list of visited restaurants to be reviewed rather than
individual reservations.  Users could be restricted to one review per
restaurant.

#### full availability implementation

keeping track of cumulative reservations per time slot

expanding database columns to allow for variable opening times

suggesting alternative availability within a given time window

#### formatted menu input

using structured entry form for menu to allow customized rendering on the
restaurant show page

#### possible implementation changes

replacing react-select and react-date-picker with jquery ui components

[root]: ./docs/open.png
[logo]: ./public/tafelspitz-logo.png
[listing]: ./docs/listing.png
[restaurant]: ./docs/restaurant_reserve.png
[about]: ./docs/about.png
[rating]: ./docs/rating.png
[reservation]: ./docs/reservations.png
[favorite]: ./docs/favorites.png
