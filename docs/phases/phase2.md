# Phase 2: Restaurants (2 days)

## Rails
### Models

### Controllers
* Api::RestaurantsController (create, index, show)

### Views
* restaurants/index.json.jbuilder
* restaurants/show.json.jbuilder

## Flux
### Views (React Components)
* RestaurantIndex
  - RestaurantIndexItem
* Restaurant

### Stores
* Restaurant

### Actions
* ApiActions.receiveAllRestaurants -> triggered by ApiUtil
* ApiActions.receiveSingleRestaurant
* RestaurantActions.fetchAllRestaurants -> triggers ApiUtil
* RestaurantActions.fetchSingleRestaurant

### ApiUtil
* ApiUtil.fetchAllRestaurants
* ApiUtil.fetchSingleRestaurant

## Gems/Libraries
* Flux Dispatcher (npm)
* Google Map
