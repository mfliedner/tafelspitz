# Schema Information

## restaurants
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null
description | text      | not null
owner_id    | integer   | not null, foreign key (references users), indexed
address     | string    | not null
phone       | string    | not null
price_range | integer   | not null
lat         | float     |
lng         | float     |
opening     | time      |
closing     | time      |
seats       | integer   | 
img_url     | string    |
menu        | text      |

## reservations
column name   | data type | details
--------------|-----------|-----------------------
id            | integer   | not null, primary key
guest_id      | integer   | not null, foreign key (references users), indexed
restaurant_id | integer   | not null, foreign key (references restaurants), indexed
date          | datetime  | not null
time          | time      | not null
guest_count   | integer   | not null
requests      | text      |

## reviews
column name   | data type | details
--------------|-----------|-----------------------
id            | integer   | not null, primary key
user_id       | integer   | not null, foreign key (references users), indexed
restaurant_id | integer   | not null, foreign key (references restaurants), indexed
date          | datetime  | not null
rating        | integer   | not null
rate_food     | integer   |
rate_ambience | integer   |
rate_service  | integer   |
rate_value    | integer   |
body          | text      |

## favorites
column name   | data type | details
--------------|-----------|-----------------------
id            | integer   | not null, primary key
user_id       | integer   | not null, foreign key (references users), indexed
restaurant_id | integer   | not null, foreign key (references restaurants), indexed

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, indexed, unique
first_name      | string    |
last_name       | string    |
phone           | string    |
password_digest | string    | not null
session_token   | string    | not null, indexed, unique
