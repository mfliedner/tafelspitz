## Component Hierarchy

**Bolded** components are associated with routes.

(:exclamation: Remember, the bolded components are created by their
associated routes, so the nesting of your bolded components must
_**exactly**_ match the nesting of your routes.)

* **App**
  * **LoginFormModal**
    * Login
    * SignUp
  * **AddRestaurantForm**
  * ReservationSearch
  * **RestaurantIndex**
    * **Restaurant**
      * RestaurantMap
      * **Review**
      * **ReviewForm**
      * **ReservationForm**
      * **ReservationUpdate**


## Routes

* **component:** `App` **path:** `/`
  * **modal:** `LoginForm` **path:** `login`
  * **modal:** `LoginForm` **path:** `signup`
  * **component:** `AddRestaurantForm` **path:** `restaurants/new`
  * **component:** `RestaurantIndex` **path:** index
  * **component:** `RestaurantIndex` **path:** `restaurants`
    * **component:** `Restaurant` **path:** `restaurants/:restaurantId`
      * **component:** `Review` **path:** `restaurants/:restaurantId/reviews`
      * **component:** `ReviewForm` **path:** `restaurants/:restaurantId/reviews`
      * **component:** `ReservationForm` **path:** `restaurants/:restaurantId/reservations`
      * **component:** `ReservationUpdate` **path:** `restaurants/:restaurantId/reservations/:reservationId`
