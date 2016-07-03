Restaurant.delete_all
User.delete_all

Restaurant.create!(
  name: "Schroeder's",
  owner_id: 2,
  description: "Originally founded in 1893, Schroeder’s longstanding history has made the Bavarian inspired beer hall a favorite of San Francisco for the past 120 years. With a new page beginning in Schroeder’s history, the restaurant is reinventing the way San Francisco views German Fare. Chef Chris Borges’s passion for the cuisine and love of California’s seasonal styling is embodied in the dishes he creates. The restaurant’s décor pays homage to its Bavarian Heritage with Herman Richter murals, Historical Wall of Steins, and the original millwork throughout. A rosewood bar stretching the length of the beer hall with 22 German beers on tap is sure to captivate the thirsty. Prost!",
  price_range: 3,
  address: "240 Front Street, San Francisco, CA 94111",
  phone: "(415) 421-4778",
  lat: 37.7939747,
  lng: -122.3986977,
  img_url: "http://resizer.otstatic.com/v1/fDzI465IL8%2B687zSupRS4Q/23672195.jpg",
  opening: 61200,
  closing: 79200,
  seats: 100,
  menu: "
BAR BITES
$6.00
Schroeder's Popcorn Mix

dill popcorn, caraway almonds, puffed barley
$8.00
Bacon Kartoffel Soup
$10.00
Berliner Currywings

obatzda, pickled carrot, radish
$6.00
Kartoffel Tots
$12.00
Smothered Tots

mushroom gravy, horseradish, cheddar, pickled peppers
$11.00
Potato Pancakes

crème fraiche, apples, fennel, celery, walnuts
$11.00
Little Gem Salad

beets, radish, grapefruit, avocado
Chicken Schnitzel Sliders

slaw, gruyere, chicken liver, potato pepper bun
$12.00
3 for
$12.00
Three Pretzel Knots

house cultured butter, mustard
WURSTS

served with mashed potatoes, braised cabbage, mustard, pickles add any additional wurst for $5
$18.00
Bratwurst
$16.00
Knackwurst
$16.00
Frankfurter
$18.00
Weisswurst
$17.00
Nurnberger Brat
$19.00
Kasekrainer
BOARDS
$36.00
Sausage

six sausages, pickles, sauerkraut, mustards
$24.00
Vesperplatte

german charcuterie (jagdwurst, mortadella, tongue bologna, nuss schinken ham, beef cervelat, landjager), mustard, pickles
CHEESES

3 for $15 6 for $30
Sternschnuppe
Hubaner
Buttermilk Blue Affinee
Goat Gouda
Good Thunder
Grevalon
ENTREES

Served after 5pm
$25.00
Jäger Schnitzel

pork cutlet, grilled, raw & pickled mushrooms, fried spätzle
$22.00
Wiener Schnitzel / A La Holstein

veal cutlet, warmed potato salad, charred lemon
$27.00
a la holstein
$25.00
Sauerbraten

braised beef, red cabbage, bacon, grapes, potato dumpling
$16.00
Kraut Burger

39 day aged chuck, caramelized onions, tomato, liptauer cheese, sauerkraut, dill pickle, kartoffel tots
$20.00
Chicken Paprikash

chicken leg and thigh, polenta taragna, cipollini onion, root vegetables, crème fraiche
$17.00
Spätzle

spring vegetables, nettle puree, preserved lemon, sheep ricotta
$5.00
Seasonal Pickled Vegetables
$4.00
Sauerkraut
$5.00
Potato Salad
$6.00
Fried Spätzle
$5.00
Red Cabbage
$7.00
Roasted Asparagus

rye romesco
DESSERT
$8.00
Linzer Torte Bars

cinnamon ice cream, raspberry confit, caraway caramel
$8.00
Apfel Strudel

rum caramel, poached grapes, whipped crème fraiche
$8.00
German Chocolate Cake

coconut ice cream, chocolate sauce, pecan paper"
)

Restaurant.create!(
  name: "Cafe Europa",
  owner_id: 2,
  description: "Cafe Europa is a Central/Eastern European restaurant in San Francisco. We serve fresh homemade favorites from Poland, Germany, Russia and many more countries. We take pride in our food and prepare everything in house fresh. Our idea is to bring together Central/Eastern European cuisine and make it welcoming for everyone regardless of their background. Our menu features such fan favorites as: Pierogi, Red Borscht, Dill Cucumber Soup - another soup that’s a hit with our guests, Pork Schnitzel - tenderized loin breaded and sautéed (Some say best in San Francisco), Stuffed Cabbage Rolls, Homemade sausage - yes we do our own sausage in house from scratch, Goulash and Stroganoff stews with rich sauces full of flavor. While European cuisine is meat heavy we do offer few excellent vegetarian/vegan choices. Since we do everything in house we know all the ingredients and can accommodate people with food allergies. We also offer one of the best European beer selections in the city.",
  price_range: 2,
  address: "4318 California St, San Francisco, CA 94118",
  lat: 37.7853473,
  lng: -122.4638523,
  img_url: "http://resizer.otstatic.com/v1/fDzI465IL8%2B687zSupRS4Q/23667277.jpg",
  phone: "(415) 386-1000",
  opening: 63000,
  closing: 79200,
  seats: 30,
  menu: 'Appetizers
$9.00
Pierogi With Potatoes Or Cabbage
$10.00
Marinated Herring
$9.00
Homemade Beef Tongue
$10.00
Gravad Lax Salmon
$10.00
Mushroom Crapes
$9.00
Potato Dumplings With Mushroom Sauce
Soups & Salads
$6.00
Red Borscht
$7.00
Mushroom Soup
$6.00
Dill Cucumber Soup
$8.00
"mizeria" Cucumber Salad
$8.00
House Salad
$8.00
Caesar Salad
$8.00
Beet Salad
$14.00
Lox Salad
Entrees
$15.00
Cabbage Rolls
$15.00
Pork Schnitzel
$14.00
Chicken Schnitzel
$15.00
Homemade Sausage With Pork
$16.00
Homemade Sausage With Lamb & Beef
$16.00
Goulash
$15.00
Beef Straganoff
$16.00
Lamb Kabob
$15.00
Chicken Kabob
$18.00
Rainbow Trout'
)

Restaurant.create!(
  name: "Teske's Germania Restaurant",
  owner_id: 2,
  description: 'First we would like to give you our "hearty welcome." Our ambiance and personal attention should give you an evening of pleasure in German dining. We will do out best to fulfill your wishes, so that you will have fond memories of our establishment. If we have succeeded in meeting your expectations, please recommend us to your friends and fellow workers. However, if we have failed to meet your expectations do not hesitate to tell us.',
  price_range: 2,
  address: "255 N. First Street, San Jose, CA 95113",
  phone: "(408) 292-0291",
  lat: 37.3398250,
  lng: -121.8936850,
  img_url: "http://resizer.otstatic.com/v1/fDzI465IL8%2B687zSupRS4Q/23670952.jpg",
  opening: 61200,
  closing: 77400,
  seats: 20,
  menu: "Appetizers
$15.00
Sausage Combination Platte

Bavarian Bratwurst, Knackwurst, Polish Sausage, and Swiss Bockwurst
$8.00
Potato Pancakes

served with Apple Sauce Vesperplatte
$15.00
Vesperplatte..

Assorted Deli Meats and Cheeses
$15.00
Mini Schweine Haxe

Topped with a Jack Daniels BBQ Peppercorn Sauce
$12.00
Reuben Sliders

Corned Beef, Sauerkraut and Swiss Cheese Wrapped in a Puff Pastry
$10.00
Baked Brie

Topped with Fresh Garlic
$15.00
Jalapeño Cheese Pretzels
$15.00
Teske's Own Garlic French Fries
$15.00
Marinated Herring
$15.00
Käse Spätzle mit Schwarzwälder Schinken
$15.00
Baked Homemade Noodles

Swiss Cheese and Black Forest Ham
Salads
$10.00
Traditional Caesar Salad

Raw egg is contained in the Caesar Salad Dressing
+$5.00
Add Chicken Breast
$10.00
Wurstsalat

Black Forest Ham and Swiss Cheese Tossed in a House Vinaigrette
$14.00
Traditional Chef Salad
$12.00
Heirloom Tomatoes and Mozzarella Cheese

Topped with a House Infused Basil Olive Oil
Small Plates
$15.00
Bauernfrühstück

Diced Black Forrest Ham Spätzle Scallions, and Mushrooms mixed in Scrambled Eggs
$14.00
Leberkäse

Topped with Sautéed Onions Served with Potato Salad and Sauerkraut
$14.00
Wild Boar Sausages

Topped with Beer Braised Onions served with Fingerling Potatoes and Sauerkraut
$15.00
Buffalo Burger

with French Fries or Potato Salad
+$0.50
American, Swiss, Pepperjack or Cheddar Add
Dinner Entrées

All Dinner Entrée's served with Home Made Soup, Garden Salad, Entrée and Home Made Apple Strudel
$30.00
Beef and Pork Filet

with a Cream Sauce served with Sauteed Mushrooms and House Made Noodles
Baked Pork Shank

served with German Potato Salad and Sauerkraut
AQ
$27.00
Angus N.Y. Strip

Choice Angus N.Y. Strip Topped with a Herb Butter served with Scalloped Potatoes and Seasonal Vegetables
$25.00
Breaded Veal Cutlet

served with German Potato Salad or French Fries
$24.00
Breaded Pork Cutlet

Topped with our Special White Wine Mushroom Sauce served with Home Made Pasta
$24.00
Cubed Tender Beef

in a Spicy Paprika Sauce served with Home Made Pasta and Red Cabbage
$25.00
Slices of Veal

filled with Swiss Cheese and Ham served with Panfried Potatoes and Seasonal Vegetables
$25.00
Smoked Pork Chop

served with German Potato Salad and Sauerkraut
$25.00
Swabian Sour Beef Roast

served with Home Made Pasta and Red Cabbage
$22.00
Polish and Bavarian Bratwurst

served with German Potato Salad and Sauerkraut
$24.00
Chicken Breast

Topped with a Red and Green Bellpepper Sauce served with Rice and Seasonal Vegetables
$24.00
Salmon Filet

Topped with an Orange Ginger Sauce served with Rice Pilaf and Seasonal Vegetables
$22.00
Vegetable Filled 'Gluten Free' Raviolis

Served in a House Made Alfredo Sauce"
  )

Restaurant.create!(
  name: "Speisekammer",
  owner_id: 2,
  description: "Speisekammer serves up the best German cuisine this side of the pond! Cooking up original German recipes, pouring an outstanding selection of German beer, crafty cocktails and an extensive wine selection, Peter and Cindy will provide you with an experience you'll be eager to repeat. Listen to local musicians play Thursday through Saturday. Come by and sit in the Biergarten or by the fireplace and enjoy what's on tap!",
  price_range: 2,
  address: "2424 Lincoln Ave, Alameda, CA 94501",
  phone: "(510) 522-1300",
  lat: 37.7660980,
  lng: -122.2398100,
  img_url: "http://resizer.otstatic.com/v1/fDzI465IL8%2B687zSupRS4Q/24009004.jpg",
  opening: 61200,
  closing: 79200,
  seats: 20,
  menu: "Appetizers
$9.50
Reibekuchen

Four Potato Pancakes served with House-Made Apple Compote
$6.00
Half
$10.50
Kleine Nürnberger Bratwürstchen

Six imported grilled Nürnberger Sausages served over Sauerkraut
$15.00
Gebeitzter Lachs

Thinly sliced House-Cured Gravlax with Capers, served with Dill Mustard Sauce
+$2.00
add two Potato Pancakes
$15.50
Käsebrett Mit Früchten

A variety of European Cheeses served with Seasonal Fruits
+$2.00
add Pretzel
$13.50
Geräucherte Forelle

Smoked Trout with Horseradish Sauce with Onion and Radish over a bed of Spinach
$16.00
Aufschitt-Platte

Charcuterie Platter w/ Toscana Salami, Mortadella, Genoa Salami, Black Forest Ham & Chicken Live Paté served w/ Pickles, Mustard & Radish
Semmelknödel Mit Pilzrahmsoße

Bread Dumpling made with Bacon served in our savory Mushroom Sauce
$15.50
three
$12.00
two
$12.00
Grosser Salat

Mixed Field Greens, Apple slices, Goat Cheese, Roasted Walnuts, Heirloom Cherry Tomatoes & Haus Vinaigrette
Fisch-Platte

Seafood Antipasti: Shrimp, Gravlax, pickled Herring, smoked RainbowTrout
$12.00
Small
$18.50
Large
$7.75
Pommes Mit 3 Sossen

German Fries served with Curry Ketchup, Bell Pepper Aioli and Tomato Ketchup
European Style Salads

each or in combination
Cabbage Salad
$3.50
Side
$5.50
Small
$8.50
Large
Cucumber Salad
$3.50
Side
$5.50
Small
$8.50
Large
Red Beet Salad
$3.50
Side
$5.50
Small
$8.50
Large
Carrot Salad
$3.50
Side
$5.50
Small
$8.50
Large
Entrees
$18.00
Schweinebraten

Roasted Pork in Beer Sauce served with Sauerkraut & Mashed Potatoes
$12.00
Small
Wiener Schnitzel Vom Schwein

Two Pork Cutlets, breaded & pan-fried served with roasted potatoes
$18.50
W/salad
$10.75
Small W/o Salad
+$2.00
Veal add
Jägerschnitzel Vom Schwein

Two Pork Cutlets, sautéed in Mushroom Sauce served with Spätzle
$18.50
W/salad
$10.75
Small (w/o Salad)
+$2.00
Veal add
$23.50
Sauerbraten

Braised Beef Tri-Tip aged & marinated in Red Wine & Secret Spices, served with Red Cabbage & Spätzle
$17.50
Falscher Hase Mit Zwiebelsosse

Bacon wrapped Beef & Pork Meatloaf with Mashed Potatoes & Onion Sauce
$21.50
Gegrilltes Lachsfilet

Grilled Salmon Filet served over a bed of sautéed Spinach served with Cucumber-Dill Sauce & Mashed Potatoes
$19.50
Rotisserie Hühnchen

Organic Half Rotisserie Roasted Chicken basted in Herb Bu#er, served with grilled Broccolini & Mashed Potatoes
Bratwurst Gegrillt

Two Grilled Lean Pork Bratwurst with Cracked Spices served over Sauerkraut & Mashed Potatoes
$16.50
Full
$11.00
Small
$19.50
Kassler vom Grill

Grilled Smoked Pork Chop served with Sauerkraut & Mashed Potatoes
$26.50
Gegrillte Fleischplatte

Family Style Grilled Meat Pla#er with Nürnberger, Thüringer, Bock, Kleine Nürnberger Sausages and a Grilled Smoked Pork Chop served over Sauerkraut. Serves 2 To 3 People
Vegetarian Entrees
Pilzstrudel mit Ziegenkäse

Strudel stuffed with Mushrooms, Italian Cheeses, Spinach & served over roasted Red Bell Pepper Sauce
$16.50
3 slices
$13.00
2 slices
Gratinierte Käsespätzle

Creamy Spätzle baked with Caramelized Onions & European Cheeses
$15.50
Full (w/ salad)
$8.00
Small (w/o salad)
+$2.00
Black Forest Ham or Bacon
Additional Sides
$5.00
Roasted Potatoes W/ Bacon
$5.00
Mashed Potatoes
$5.00
Red Cabbage
$5.00
Potato Salad W/ Bacon
$5.00
Fries
$5.00
Sauerkraut
$5.00
Spätzle
$4.00
Pretzel"
  )

Restaurant.create!(
  name: "Nasch",
  owner_id: 2,
  description: "Coming Soon!",
  price_range: 2,
  address: "A-217 N Santa Cruz Ave, Los Gatos, CA 95030",
  phone: "(408) 402-5092",
  lat: 37.2266370,
  lng: -121.9821640,
  img_url: "http://nasch-bistro.com/wp-content/uploads/nasch-bistro-kitchen@2x.jpg",
  opening: 61200,
  closing: 77400,
  seats: 20,
  menu: "Jause

Selection of appetizers and small plates
Meats
$5.00
Speck
$4.00
Salami
$4.00
Pork Belly
$5.00
Capicollo
Fish
$4.00
Smoked Trout
$4.00
Pickled Herring (Roll Mops)
$5.00
Deviled Egg (Teufels Eier)

with salmon caviar
Veggies & Spreads
$3.00
Pickle Veggies
$3.00
Liptauer
$3.00
Pumpkin Seed Quark
$4.00
Chicken Liver Mousse
House Favorites
$4.00
Homemade Pretzel

with sweet Bavarian mustard
Suppe Salat

Soup and salad
$6.00
Knoblauch Suppe

garlic soup with cayenne croutons
$7.00
Butter Lettuce Salad

with radishes, pumpkin seeds & seed oil
$9.00
Gemischter Salad

medley of cabbage, cucumber, carrot & market mix green salads
$10.00
Frisée Aux Lardons Salad

with bacon, poached egg, croutons & whole grain mustard vinaigrette
Würstel

Traditional Viennese sausage varieties
Bratwurst (Pork & Veal)

with sauerkraut & Dijon mustard
$8.00
Each
Merguese (Lamb)

with sauerkraut & Dijon mustard
$8.00
Each
Nürnberger (Pork)

with sauerkraut & Dijon mustard
$8.00
Each
Käsekrainer (Pork & Cheese)

with sauerkraut & Dijon mustard
$8.00
Each
Paprikawurst (Pork & Beef)

with sauerkraut & Dijon mustard
$8.00
Each
$8.00
Frankfurter (Pork & Beef)

with Dijon, horseradish & mini Kaiser roll
$8.00
Weisswurst (Pork & Veal)

with Bavarian mustard & pretzel
Würstel Teller

Choose a selection of:
$22.00
3 Sausages

served with sauerkraut, Dijon & Bavarian mustards
Sides

Round out your meal with a variety of side dishes
Potato Salad
$5.00
Each
Red Cabbage
$5.00
Each
Braised Sauerkraut
$5.00
Each
Spätzle
$5.00
Each
Vegetables
$5.00
Each
French Fries
$5.00
Each
Hauptspeisen

Main dishes from the old country
$17.00
Chicken Schnitzel Sandwich

with chive aioli & choice of green salad or fries
$22.00
Pork Wiener Schnitzel

with lingonberries, lemon, potato salad or fries
+$5.00
Holzstein Style Add
$15.00
Flieger Toast

ham & cheese sandwich, fried egg & choice of green salad or fries
$16.00
Käse Spätzle

with beer cheese, caramelized onions, & crispy onions
+$2.00
With Bacon Add
$15.00
Gemüse Gröstl

seasonal vegetables, roasted fingerling potatoes, Kalamata olive pesto
$20.00
Chicken Paprikash

braised chicken thighs in Hungarian paprika with spätzle & pickled peppers
$25.00
Pan Sautéed Trout

with braised red cabbage, cauliflower and pequillo pepper sauce
$21.00
Blunzen Gröstl

blood sausage with sauerkraut, roasted potatoes, horseradish & Dijon mustard
Schlacht Platte
$28.00
Schlacht Platte

pork chop, sausage & pork shoulder, sauerkraut & potatoes"
  )

User.create!(
  email: "guest",
  password: "password"
)

User.create!(
  first_name: "Moritz",
  last_name: "Fliedner",
  phone: "1234567890",
  email: "moritz@fliedner.com",
  password: "password"
)
