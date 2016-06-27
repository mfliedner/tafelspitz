# Tafelspitz

[Heroku link][heroku] **Note:** This should be a link to your production site

[heroku]: http://www.herokuapp.com

## Minimum Viable Product

Tafelspitz is a web application inspired by Opentable that will be build using Ruby on Rails and React.js.  By the end of Week 9, this app will, at a minimum, satisfy the following criteria:

- [ ] Hosting on Heroku
- [ ] New account creation, login, and guest/demo login
- [ ] A production README, replacing this README (**NB**: check out the [sample production README](docs/production_readme.md) -- you'll write this later)
- [ ] Create and search restaurants
  - [ ] database is seeded with restaurants
  - [ ] logged-in user ("owner") can add restaurants
  - [ ] restaurants display on map and search attributes (built out in later phases)
- [ ] Reservations
  - [ ] search form lists available restaurants based on user input
  - [ ] booking form creates reservation
  - [ ] update form allows change or cancellation of booking
- [ ] Ratings/reviews
  - [ ] user can add reviews to booked restaurants
  - [ ] reviews are attached to restaurant show page
  - [ ] index features latest/top review
- [ ] Favorites
  - [ ] user can toggle favorite restaurant status
  - [ ] search can be filtered by favorite and rating

## Design Docs
* [View Wireframes][views]
* [React Components][components]
* [Flux Cycles][flux-cycles]
* [API endpoints][api-endpoints]
* [DB schema][schema]

[views]: docs/views.md
[components]: docs/components.md
[flux-cycles]: docs/flux-cycles.md
[api-endpoints]: docs/api-endpoints.md
[schema]: docs/schema.md

## Implementation Timeline

### Phase 1: Backend setup and Front End User Authentication (1 day, W1 Tue 6pm)

**Objective:** Functioning rails project with Authentication

- [ ] create new project
- [ ] create `User` and `Restaurant` models
- [ ] back- and front-end authentication
- [ ] user signup/signin modal pages

### Phase 2: Restaurant Model, API, and basic APIUtil (2 days, W1 Thu 6pm)

**Objective:** Restaurants can be created and shown.

- [ ] create `Restaurant` views and forms
- [ ] select German-themed restaurants for the database
- [ ] CRUD API for restaurants (`RestaurantsController`)
- [ ] jBuilder views for restaurants
- [ ] setup Webpack & Flux scaffold
- [ ] setup `APIUtil` to interact with the API
- [ ] test out API interaction in the console.
- [ ] use Google Map API for restaurant map

### Phase 3: Reservations, Flux Architecture and Router (2 days, W2 Mon 6pm)

**Objective:** Reastaurants can be created and booked with the
user interface; main, Opentable-like styling in place

- [ ] create `Reservation` model
- [ ] setup the flux loop with skeleton files
- [ ] setup React Router
- [ ] implement the `ReservationsController`.
- [ ] create the reservation form views
- [ ] create a basic style guide
- [ ] position elements on the page
- [ ] add basic colors & styles

### Phase 4: Reviews and Ratings (2 days, W2 Wed 6pm)

**Objective:** User can add reviews and restaurants indexed by rating.

- [ ] create `Review` model
- build out API, Flux loop, and components for:
  - [ ] `ReviewsController`
  - [ ] create ratings-filtered index
  - [ ] add reviews to restaurants show page
- Use CSS to style new views

### Phase 5: Favorites (2 days, W2 Fri 6pm)

**Objective:** Restaurants can be liked/unliked and filtered to favorites.

- [ ] create `Favorite` model and join table
- [ ] build toggle logic
- [ ] create store filter of favorite restaurants
- [ ] Get feedback on my UI from others

### Bonus Features (TBD)
- [ ] Discover/explore
- [ ] Points for bookings and usage of site
- [ ] Tags
- [ ] Help/Community page
- [ ] Photo gallery
- [ ] Diner/Restaurateur email contact

[phase-one]: docs/phases/phase1.md
[phase-two]: docs/phases/phase2.md
[phase-three]: docs/phases/phase3.md
[phase-four]: docs/phases/phase4.md
[phase-five]: docs/phases/phase5.md
