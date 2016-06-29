Restaurant.delete_all
User.delete_all

Restaurant.create!(
  name: "Schroeder's",
  owner_id: 1,
  description: "Originally founded in 1893, Schroeder’s longstanding history has made the Bavarian inspired beer hall a favorite of San Francisco for the past 120 years. With a new page beginning in Schroeder’s history, the restaurant is reinventing the way San Francisco views German Fare. Chef Chris Borges’s passion for the cuisine and love of California’s seasonal styling is embodied in the dishes he creates. The restaurant’s décor pays homage to its Bavarian Heritage with Herman Richter murals, Historical Wall of Steins, and the original millwork throughout. A rosewood bar stretching the length of the beer hall with 22 German beers on tap is sure to captivate the thirsty. Prost!",
  price_range: 3,
  address: "240 Front Street, San Francisco, CA 94111",
  lat: 37.7939747,
  lng: -122.3986977,
  img_url: "http://resizer.otstatic.com/v1/fDzI465IL8%2B687zSupRS4Q/23672195.jpg",
)

Restaurant.create!(
  name: "Cafe Europa",
  owner_id: 1,
  description: "Cafe Europa is a Central/Eastern European restaurant in San Francisco. We serve fresh homemade favorites from Poland, Germany, Russia and many more countries. We take pride in our food and prepare everything in house fresh. Our idea is to bring together Central/Eastern European cuisine and make it welcoming for everyone regardless of their background. Our menu features such fan favorites as: Pierogi, Red Borscht, Dill Cucumber Soup - another soup that’s a hit with our guests, Pork Schnitzel - tenderized loin breaded and sautéed (Some say best in San Francisco), Stuffed Cabbage Rolls, Homemade sausage - yes we do our own sausage in house from scratch, Goulash and Stroganoff stews with rich sauces full of flavor. While European cuisine is meat heavy we do offer few excellent vegetarian/vegan choices. Since we do everything in house we know all the ingredients and can accommodate people with food allergies. We also offer one of the best European beer selections in the city.",
  price_range: 2,
  address: "4318 California St, San Francisco, CA 94118",
  lat: 37.7853473,
  lng: -122.4638523,
  img_url: "http://resizer.otstatic.com/v1/fDzI465IL8%2B687zSupRS4Q/23667277.jpg",
)

User.create!(
  email: "guest",
  password: "password"
)
