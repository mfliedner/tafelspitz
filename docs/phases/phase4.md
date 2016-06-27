# Phase 4: Reviews and Ratings

## Rails
### Models
* Review

### Controllers
* Api::ReviewsController (create, index, show)

### Views
* reviews/index.json.jbuilder

## Flux
### Views (React Components)
* Review
* ReviewForm

### Stores
* Reviews

### Actions
* ApiActions.receiveAllReviews -> triggered by ApiUtil
* ReviewActions.fetchAllReviews -> triggers ApiUtil
* ReviewActions.addReview

### ApiUtil
* ApiUtil.fetchAllReviews
* ApiUtil.addReview

## Gems/Libraries
