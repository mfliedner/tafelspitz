# API Endpoints

## HTML API

### Root

- `GET /` - loads React web app

### Users

- `GET /api/users/new`
- `POST /api/users`
- `PATCH /api/users`

### Session

- `GET /api/session/new`
- `POST /api/session`
- `DELETE /api/session`

## JSON API

### Restaurants

- `GET /api/restaurants`
- `POST /api/restaurants`
- `GET /api/restaurants/:id`

### Reservations

- `GET /api/restaurants/:id/reservations`
- `POST /api/restaurants/:id/reservations`
- `GET /api/restaurants/:id/reservations/:id`
- `PATCH /api/restaurants/:id/reservations/:id`
- `DELETE /api/restaurants/:id/reservations/:id`

### Reviews

- `GET /api/restaurants/:id/reviews`
- `POST /api/restaurants/:id/reviews`

### Favorites

- `POST /api/favorites`
- `DELETE /api/favorites`
