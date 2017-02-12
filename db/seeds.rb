Restaurant.delete_all
User.delete_all

Restaurant.create!(
  name: "Schroeder's",
  owner_id: 2,
  description: "Originally founded in 1893, Schroeder’s longstanding history has made the Bavarian inspired beer hall a favorite of San Francisco for the past 120 years. With a new page beginning in Schroeder’s history, the restaurant is reinventing the way San Francisco views German Fare. Chef Chris Borges’s passion for the cuisine and love of California’s seasonal styling is embodied in the dishes he creates. The restaurant’s décor pays homage to its Bavarian Heritage with Herman Richter murals, Historical Wall of Steins, and the original millwork throughout. A rosewood bar stretching the length of the beer hall with 22 German beers on tap is sure to captivate the thirsty. Prost!",
  price_range: 3,
  address: "240 Front Street, San Francisco, CA 94111",
  phone: "(415) 421-4778",
  mailto: "mailto:info@schroederssf.com",
  website: "http://www.schroederssf.com",
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
  mailto: "mailto:gbteskes@mac.com",
  website: "http://teskes-germania.com",
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
  mailto: "mailto:info@speisekammer.com",
  website: "http://www.speisekammer.com",
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
  website: "http://nasch-bistro.com/",
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

Restaurant.create!(
  name: "Naschmarkt Restaurant",
  owner_id: 2,
  description: "Naschmarkt (NASH-MARKed) restaurant is located in historical downtown Campbell. The restaurant is named after the largest open air produce market in Vienna, Austria. The Naschmarkt has been a Viennese institution dating back to the 16th century and is known to locals as the \"city's stomach\". The restaurant, founded in 2011, features local Californian ingredients complimented by modern austrian fare.",
  price_range: 2,
  address: "384 E. Campbell Ave, Campbell, CA 95008",
  phone: "(408) 378-0335",
  website: "http://www.naschmarkt-restaurant.com/",
  lat: 37.2868000,
  lng: -121.9429740,
  img_url: "http://resizer.otstatic.com/v1/fDzI465IL8%2B687zSupRS4Q/23690475.jpg",
  opening: 61200,
  closing: 75600,
  seats: 20,
  menu: "Starters
$11.00
Smoked Pork Bratwurst

with braised sauerkraut, caramelized onions and Dijon mustard
$15.00
Quark Spätzle

with Smoked Chicken, yellow corn, Brussels sprout leaves, tarragon and mushrooms
$16.00
Austrian Cold Cuts

saucisson sec, speck, smoked trout, chicken liver mousse, liptauer spread, fresh horseradish, pickles and mustard
$15.00
Riesling Steamed Black Mussels

with carrot julienne, shallots, garlic, basil and grilled garlic bread
Soups & Salads
$7.00
Jerusalem Artichoke & Leek Soup

with smoked trout
$8.00
Butternut Squash Soup

with toasted pumpkin seeds and Styrian pumpkin seed oil
$8.00
Butter Lettuce Salad

with shaved radishes, toasted pumpkin seeds, pumpkin seed oil and citrus vinaigrette
$11.00
Goat Cheese Purse Salad

with rosemary, honey, baby spinach, toasted walnuts, pomegranate seeds and balsamic vinegar reduction
$11.00
Bitter Green Salad

frisée and trevisio with Point Reyes blue cheese, red wine poached honey crisp apples, shaved pears and bacon-mustard vinaigrette
Sides
Potato Salad
Seasonal Vegetables
Braised Sauerkraut
Quark Spätzle
Braised Red Cabbage
Fingerling Potatoes
Entrées
$19.00
Fresh Papardelle Pasta

with shredded braised turkey leg meat, Brussels sprouts, roasted butternut squash, sage, pomegranate seeds and orange gastrique
$25.00
Pan Roasted Organic Chicken Breast

with spaghetti squash, rapini, roasted baby carrots, Raclette fondue and garlic bread crumbs
$27.00
Seared Arctic Char

with butternut squash purée, young carrots, kale, red onion, spiced pumpkin seeds and Styrian pumpkin seed oil
$30.00
Roasted White Sea Bass

Mussels and Tiger Prawns California White Chowder with potatoes, fennel, celery, bacon, chili emulsion, leeks and sour dough croutons
$27.00
Jäger Schnitzel

pork schnitzel braised in a mushroom cream sauce with spätzle, garlic confit and broccolini
$23.00
Kraut Rouladen

beef, pork and smoked bacon filled Savoy cabbage with horseradish cream cabbage, roasted butternut squash, kale, pomegranate and chicken jus
$31.00
Classic Wiener Schnitzel

with lingonberry sauce, Austrian potato salad, lemon and crispy parsley
$29.00
Hungarian Beef Goulash

Beef Shoulder braised in paprika, served with herbed spätzle, roasted Hungarian pepper and sour cream
$29.00
Double Cooked Pork Belly

with celery root purée, glazed champignons, melted leeks and pork au jus
$38.00
Grilled 12 oz. Niman Ranch New York Steak

with garlic confit, Blue Lake beans, roasted fingerling potatoes and Zweigelt wine sauce"
  )

Restaurant.create!(
  name: "Simply Fondue Livermore",
  owner_id: 2,
  description: "Return to this celebrated art of cooking right at your table by selecting from a wide assortment of incredible fondue items. From our succulent lobster and beef to our out-of-this world imported cheese and chocolate fondues, you're guaranteed to please your most desirable tastes.
At Simply Fondue, we are committed to bringing you simply the best fondue dining experience found anywhere. We guarantee a relaxed and casual dining atmosphere that moves along at a leisurely pace. We use only the finest ingredients and make all of our sauces, batters, and dressings from scratch daily. Enjoy a selection from our extensive wine list or one of the more than 100 hand-crafted martinis and specialty drinks during your visit.",
  price_range: 3,
  address: "2300 First Street, Livermore, CA 94550",
  phone: "(925) 443-6638",
  contact: "http://www.simplyfonduelivermore.com/Contact/",
  website: "http://www.simplyfonduelivermore.com/",
  lat: 37.6824730,
  lng: -121.7679410,
  img_url: "http://resizer.otstatic.com/v1/fDzI465IL8%2B687zSupRS4Q/23673326.jpg",
  opening: 57600,
  closing: 79200,
  seats: 20,
  menu: "Salads

$10 each
Gorgonzola Field Greens

Mixed field greens, cherry tomato, diced cucumber, california choppedwalnuts and herbal croutons tossed in our house raspberry vinaigrette dressing and toppedwith crumbled gorgonzola cheese
Wedge Salad

Iceberg lettuce, red onion, corn, dried cranberries, almonds, cherry tomato, and bacon toppedwith our house made chunky bleu cheese dressing
Classic Caesar

Crisp romaine, scraped parmesan cheese, and herbal croutons tossed in a creamy caesar dressing
Spinach & Apple

Baby spinach, sliced fuji apples, and glazed walnuts tossed in a sweet cider dressing*
California Caprese

Thick slices of heirloom tomatoes and fresh mozzarella with sliced avocado, red onions, with italian dressing
Cheese Fondues

$12 per person, served with an assortment of fresh breads, crisp vegetables, and fruits
Aged Sharp Cheddar

Tillamook sharp cheddar cheese, beer, garlic, and spices
Traditional Swiss Chalét

Imported gruyere and emmentaler cheeses, chablis, kirshwasser, garlic, and spices
Spicy Pepper Jack

Creamy monterrey jack cheese, fresh peppers, beer, garlic, and spices
Loaded Whiskey Cheddar

Aged sharp cheddar, beer, fresh horseradish, bacon, chives, splash of whiskey
Italian Fontina

A rich blend of imported fontina d'aosta and grated romano cheeses, blended base, garlic, basil pesto, and marinara
à La Carte Entrées

Served with seasonal vegetables and a threecheese ravioli add an 6oz. Cold water lobster tail for $18
$32.00
Chicken Breast

Farm raised chicken breast, roasted garlic chicken, mesquite bbq chicken, lemon pepper chicken, and teriyaki chicken
$35.00
Beef Tenderloin

Delicious cuts of aged beef tenderloin, bacon wrapped tenderloin, maple beef tenderloin, six pepper beef, and smoked polish sausage
$29.00
Spring Vegetable

An assortment of fresh seasonal vegetables including tofu, yellow squash, zucchini, broccoli florets, cauliflower, red potatoes, sweet potatoes, mushrooms, green bell peppers, red onions, and asparagus
$37.00
Seafood Dinner

Black tiger shrimp, pecan crusted salmon, blackened mahimahi, calamari steak, and sesame ahi tuna
$34.00
Combination Fondue

Roasted garlic chicken, teriyaki chicken, black tiger shrimp, six pepper beef, and aged beef tenderloin
$42.00
Lobster Trio

A pair of 6 oz. Cold water lobster tails, black tiger shrimp, and aged beef tenderloin
Combination Dinners Designed for Two

Dinners are priced per person with a two person minimum, a childs's fondue feast must be accompanied by an adult fondue feast
Lobster & Wine Upgrade

Add a pair of 6oz. Cold water lobster tails and any bottle from our wine list priced 30 or less to the fondue feast
$47.00
Per couple
Winemaker's Flight Upgrade

Add a flight of wines paired with each course exclusively by local wine makers. Ask your server for the current pairings and pricing
Fondue Feast
Fondue Feast

A complete fourcourse fondue dinner featuring a shared cheese fondue appetizer, gourmet salad, choice of six (6) entrée items, and a shared chocolate fondue dessert. Our endless dinner is available when all guests seated at your table orders this option for $6 per person we do not allow unused portions to be taken from the restaurant endless applies to the entrée course only
$54.00
Per person
$27.00
For Ages 13 to 17
$15.00
Per child age 12 and under
Entrée Selections
Beef Tenderloin
Six Pepper Beef
Bacon Wrapped Tenderloin
Maple Beef Tenderloin
Smoked Polish Sausage
Herbcrusted Pork Tenderloin
Breast of Chicken
Roasted Garlic Chicken
Teriyaki Chicken
Honey Almond Chicken
Lemon Pepper Chicken
Mesquite Bbq Chicken
Black Tiger Shrimp
Coconut Shrimp
Pecan Crusted Salmon
Blackened Mahimahi
Sesame Ahituna
Calamari Steak
Entrée Cooking Styles
Vegetable Bouillon

A flavorful broth blend of fresh vegetables, garlic, and spices
Cajun Boullion

A southern blend of beef bouillon, fresh garlic, and cajun spices
Fondue Grill

A healthy and lite cooking style grilled right at your table
Traditional

Cooked in transfat free oil and served with our housemade sesame batter and famous stuffed mushrooms. Tempura batter served upon request
Desserts

à La carte, $12 per person, add an individual cheesecake for $4
Desserts

Our oneofakind incredible chocolate fondues are flambéed tableside and served with moist rich pound cake, jumbo marshmallows, triple chunk brownies, fresh oranges, banana chunks, fresh pineapples, fresh raspberries*, chocolate chip cookie dough, rice krispy squares, rolled cookies, and cinnamon sugar donuts"
  )

Restaurant.create!(
  name: "The Melting Pot - Larkspur",
  owner_id: 2,
  description: "The Melting Pot is located in the historic Brick Kiln in Larkspur, CA. The Melting Pot offers an extraordinary dining experience that you won't find at any other restaurant. Here you'll discover all the ingredients to a perfect evening, including a relaxed atmosphere, private tables, attentive service, fine wines & fabulous four-course fondue dinners. No matter what the occasion, from a romantic date to a get-together with friends, meetings or large groups, The Melting Pot always hits the spot. The Melting Pot offers the highest quality fresh ingredients, a variety of cooking styles, unique sauces & your favorite chocolate fondue. To highlight your meal we also offer a wide variety of wines to compliment your meal. Make reservations today & come dip into something different.",
  price_range: 3,
  address: "125 E. Sir Francis Drake Blvd, Larkspur, CA 94939",
  phone: "(415) 461-6358",
  website: "https://www.meltingpot.com/",
  lat: 37.9446300,
  lng: -122.5057300,
  img_url: "http://resizer.otstatic.com/v1/fDzI465IL8%2B687zSupRS4Q/23895842.jpg",
  opening: 57600,
  closing: 79200,
  seats: 20,
  menu: "Cheese Fondue

The award-winning cheeses in our fondue are melted to order and served with artisan breads, seasonal fruits and veggies for dipping. Choose one cheese per cooktop. Gluten-free bread available upon request. All prices are per person. Artisanal Dippers: Complement your cheese fondue with our selection of hand-cut premium cured meats. (Gluten Free) $4.95 per plate
$9.95
Wisconsin Cheddar*

Mild, Comforting; Featured Cheeses: Aged cheddar, Emmenthaler; Melted with: Lager beer, garlic, spices. With Redbridge® beer (Gluten Free)
$9.95
Fiesta

Zesty, Flavorful; Featured Cheeses: Aged cheddar, Emmenthaler; Melted with: Lager beer, house-made salsa, jalapeño. With Redbridge® beer (Gluten Free)
$9.95
Garlic & Herb Quartet

Tangy, Herbaceous; Featured Cheeses: Butterkäse, Fontina, Garlic & Herb, Chèvrer; Melted with: White wine, lemon, scallions
$9.95
Spinach & Artichoke

Classic, Savory; Featured Cheeses: Butterkäse, Fontina; Melted with: Fresh spinach, artichoke hearts, garlic
Craft Your Own Wisconsin Cheddar

With one of our local brews below. We'll leave the rest behind for the table. Must be 21 or older. Plus additional: Lagunitas, IPA ($6); Oskar Blues, Pale Ale ($6); Maui Brewing Co., Bikini Blonde Lager ($6)
$9.95
per person
$9.95
Bacon & Brie

Rich, Smooth; Featured Cheeses: Baby Brie, Gruyère, Raclette, Fontina; Melted with: White wine, bacon, lemon, scallions
$9.95
Classic Alpine

Rich, Sweet-yet-earthy; Featured Cheeses: Gruyere, Raclette, Fontina; Melted with: White wine, garlic, fresh nutmeg
Salads

Each of our delicious salads is made to order with fresh greens and toppings. Enjoy yours with one of our signature dressings
$7.95
The Melting Pot House Salad*

Romaine & iceburg, cheddar cheese, tomatoes, croutons and sliced egg with choice of house-made dressings: sweet & tangy or peppercorn ranch. Without croutons - Gluten Free
$7.95
Caesar

Crisp romaine, shredded Parmesan cheese, croutons and Parmesan-dusted pine nuts, tossed with Caesar dressing. Without croutons - Gluten Free
$7.95
Apple Bacon Spinach

Fresh spinach, crimini mushrooms, sliced egg, spicy pecans, Granny Smith apples and apple bacon vinaigrette
$7.95
California

Mixed greens, tomatoes, candied pecans and Gorgonzola cheese with raspberry walnut vinaigrette
Entrees: 4-Course Experience

Our main course features premium ingredients such as hormone and antibiotic-free chicken, Certified Black Angus Beef® and all-natural pork tenderloin. The 4-Course Experience is the ultimate way to fondue and includes four courses: cheese, salad, an entrée below and chocolate dessert. Prices below include all four courses. We'd be happy to prepare any of our entrées gluten-free-just ask! Add a cold water lobster tail to any entrée
$42.50
The Classic*

Certified Angus Beef® sirloin, Memphis-style dry rub pork, Pacific white shrimp, Herb-crusted chicken breast, Teriyaki-marinated sirloin
$42.50
French Quarter

Cajun-seasoned filet mignon, Cajun-seasoned chicken breast, Cajun-seasoned Pacific white shrimp, Smoky andouille sausage
$49.95
Fondue Delight

Premium filet mignon, Cold water lobster tail, All-natural chicken breast, Pacific white shrimp, Wild mushroom sacchetti
$46.95
Surf & Turf

Cold water lobster tail, Premium filet mignon, Wild mushroom sacchetti
$38.50
Good Earth Vegetarian

Edamame or onion rings, Artichoke hearts, Baby Portobello mushrooms, Fresh asparagus, Marinated tofu, Featured pasta, Wild mushroom sacchetti. Available with Entrée only
$42.50
Land & Sea*

Premium filet mignon, Herb-crusted chicken breast, Pacific white shrimp
$42.50
Steak Lovers

Premium filet mignon, Teriyaki-marinated sirloin, Certified Angus Beef® sirloin
$47.95
Fondue Fusion

Cold water lobster tail, Honey orange duck breast, Wild mushroom sacchetti, Lemon basil chicken, Whiskey BBQ pork medallions
$42.50
Pacific Rim

Teriyaki-marinated sirloin, Honey orange duck breast, Pacific white shrimp, Chicken & vegetable potstickers
Entrees: Create Your Own

Our main course features premium ingredients such as hormone and antibiotic-free chicken, Certified Black Angus Beef® and all-natural pork tenderloin. See individual pricing below or create your own combination of three individual items. Make It a 4-Course - Make it a 4-course Create Your Own with your choice of cheese fondue, salad and chocolate fondue: $43.50
$25.95
Premium Filet Mignon
$24.95
Sesame-Crusted Ahi Tuna
$24.95
Atlantic Salmon Filet
$25.95
Honey Orange Duck Breast
$23.95
Memphis-Style Dry Rub Pork*
$24.95
Whiskey BBQ Pork Medallions
$17.95
Wild Mushroom Sacchetti
$22.95
Teriyaki-Marinated Sirloin*
$25.95
Certified Angus Beef® Sirloin
$21.95
Pacific White Shrimp
$17.95
All-Natural Breast of Chicken
$17.95
Smoky Andouille Sausage
$18.95
Lemon Basil Chicken
$18.95
Chicken & Vegetable Potstickers
$19.95
Featured Pasta
Cooking Styles

Prepare your entrées with any of our cooking styles. Choose one style per cooktop. Priced per pot
Seasoned Court Bouillon

Light, Versatile; Fresh, seasoned vegetable broth. Complimentary
$6.00
Coq Au Vin*

Classic, Elegant; The classic French tradition of Burgundy wine infused with fresh herbs, spices and mushrooms
$6.00
Mojo

Bold, Flavorful; Caribbean-inspired bouillon bursting with flavors of fresh garlic and citrus
$6.00
Bourguignonne

Traditional, Hearty; The traditional European style with canola oil, and served with a side of tempura sesame batter. Without batter - Gluten Free"
  )

Restaurant.create!(
  name: "The Melting Pot - San Mateo",
  owner_id: 2,
  description: "The Melting Pot is located in the San Mateo CalTrain Transit Center in San Mateo, CA. The Melting Pot offers an extraordinary dining experience that you won't find at any other restaurant. Here you'll discover all the ingredients to a perfect evening, including a relaxed atmosphere, private tables, attentive service, fine wines & fabulous four-course fondue dinners. No matter what the occasion, from a romantic date to a get-together with friends, meetings or large groups, The Melting Pot always hits the spot. The Melting Pot offers the highest quality fresh ingredients, a variety of cooking styles, unique sauces & your favorite chocolate fondue. To highlight your meal we also offer a wide variety of wines to compliment your meal. Make reservations today & come dip into something different.",
  price_range: 3,
  address: "2 N B Street, San Mateo, CA 94401",
  phone: "(650) 342-6358",
  website: "https://www.meltingpot.com/",
  lat: 37.5675590,
  lng: -122.3246050,
  img_url: "http://resizer.otstatic.com/v1/fDzI465IL8%2B687zSupRS4Q/23672874.jpg",
  opening: 54000,
  closing: 82800,
  seats: 20,
  menu: "Cheese Fondue

The award-winning cheeses in our fondue are melted to order and served with artisan breads, seasonal fruits and veggies for dipping. Choose one cheese per cooktop. Gluten-free bread available upon request. All prices are per person. Artisanal Dippers: Complement your cheese fondue with our selection of hand-cut premium cured meats. Gluten Free $6.95 per plate
$8.95
Wisconsin Cheddar*

Mild, Comforting; Featured Cheeses: Aged cheddar, Emmenthaler; Melted with: Lager beer, garlic, spices; with Redbridge® beer
$8.95
Loaded Baked Potato Cheddar

Comforting, Savory; Featured Cheeses: Aged cheddar, Emmenthaler; Melted with: Vegetable broth, our Green Goddess, Garlic & Wine seasoning, potatoes, bacon, scallions
$8.95
Wisconsin Trio

Robust, Aromatic; Featured Cheeses: Butterkäse, Fontina, Gorgonzola; Melted with: White wine, sherry, shallots, scallionss
$8.95
Spinach & Artichoke

Classic, Savory; Featured Cheeses: Butterkäse, Fontina; Melted with: Fresh spinach, artichoke hearts, garlic
Craft Your Own Wisconsin Cheddar

With one of our local brews below. We'll leave the rest behind for the table. Must be 21 or older. Sierra Nevada, Pale Ale $6.50; Lagunitas, IPA $6.50; Gordon Biersch, Hefeweizen $6.50
$8.95
per person
$8.95
Bacon & Jalapeño

Smoky, Spicy; Featured Cheeses: Gruyère, Raclette, Fontina; Melted with: White wine, bacon, jalapeños, shallots, garlic
$9.95
Classic Alpine

Rich, Sweet-Yet-Earthy; Featured Cheeses: Gruyere, Raclette, Fontina; Melted with: White wine, garlic, fresh nutmeg
Salads

Each of our delicious salads is made to order with fresh greens and toppings. Enjoy yours with one of our signature dressings
$7.95
The Melting Pot House Salad*

Romaine & iceburg, cheddar cheese, tomatoes, croutons and sliced egg with choice of house-made dressings: sweet & tangy or peppercorn ranch. Without croutons Gluten Free
$7.95
Caesar

Crisp romaine, shredded Parmesan cheese, croutons and Parmesan-dusted pine nuts, tossed with Caesar dressing. Without croutons Gluten Free
$7.95
Mandarin & Almond

Romaine, red cabbage, shredded carrots, honey-roasted almonds, wonton strips, mandarin oranges and Asian dressing
$7.95
California

Mixed greens, tomatoes, candied pecans and Gorgonzola cheese with raspberry walnut vinaigrette
Entrées: 4-Course Experience

Our main course features premium ingredients such as hormone and antibiotic-free chicken, Certified Black Angus Beef® and all-natural pork tenderloin. The 4-Course Experience is the ultimate way to fondue and includes four courses: cheese, salad, an entrée below and chocolate dessert. Prices below include all four courses. We'd be happy to prepare any of our entrées gluten-free - just ask! Add a cold water lobster tail to any entrée for just $45.95
$44.95
The Classic*

Certified Angus Beef® sirloin, Memphis-style dry rub pork, Pacific white shrimp, Herb-crusted chicken breast, Teriyaki-marinated sirloin
$44.95
French Quarter

Cajun-seasoned filet mignon, Cajun-seasoned chicken breast, Cajun-seasoned Pacific white shrimp, Smoky andouille sausage
$48.95
Fondue Delight

Premium filet mignon, Cold water lobster tail, All-natural chicken breast, Pacific white shrimp, Wild mushroom sacchetti
$49.95
Surf & Turf

Cold water lobster tail, Premium filet mignon, Wild mushroom sacchetti
$37.95
Good Earth Vegetarian

Edamame or onion rings, Artichoke hearts, Baby Portobello mushrooms, Fresh asparagus, Marinated tofu, Featured pasta, Wild mushroom sacchetti
$18.95
Entrée only
$45.95
Land & Sea*

Premium filet mignon, Herb-crusted chicken breast, Pacific white shrimp
$47.95
Steak Lovers

Premium filet mignon, Teriyaki-marinated sirloin, Certified Angus Beef® sirloin
$48.95
Fondue Fusion

Cold water lobster tail, Honey orange duck breast, Wild mushroom sacchetti, Whiskey BBQ pork medallion, Sriracha shrimp
$44.95
Pacific Rim

Teriyaki-marinated sirloin, Honey orange duck breast, Pacific white shrimp, Chicken & vegetable potstickers
Entrées: Create Your Own

Our main course features premium ingredients such as hormone and antibiotic-free chicken, Certified Black Angus Beef® and all-natural pork tenderloin. See individual pricing below or create your own combination of three individual items for $24.95
$45.95
Make it a 4-Course

Make it a 4-course Create Your Own with your choice of cheese fondue, salad and chocolate fondue
$24.95
Premium Filet Mignon
$24.95
Sesame-Crusted Ahi Tuna
$24.95
Atlantic Salmon Filet
$19.95
All-Natural Breast of Chicken
$19.95
Smoky Andouille Sausage
$24.95
Whiskey BBQ Pork Medallion
$21.95
Wild Mushroom Sacchetti
$24.95
Teriyaki-Marinated Sirloin*
$24.95
Certified Angus Beef® Sirloin
$24.95
Pacific White Shrimp
$24.95
Sriracha Shrimp
$24.95
Honey Orange Duck Breast
$24.95
Memphis-Style Dry Rub Pork*
$21.95
Chicken & Vegetable Potstickers
$19.95
Featured Pasta
Cooking Styles

Prepare your entrées with any of our cooking styles. Choose one style per cooktop. Priced per pot
Seasoned Court Bouillon

Light, Versatile; Fresh, seasoned vegetable broth
Complimentary
$5.95
Coq au Vin*

Classic, Elegant; The classic French tradition of Burgundy wine infused with fresh herbs, spices and mushrooms
$5.95
Mojo

Bold, Flavorful; Caribbean-inspired bouillon bursting with flavors of fresh garlic and citrus
$5.95
Bourguignonne

Traditional, Hearty; The traditional European style with canola oil, and served with a side of tempura sesame batter. Without batter Gluten Free
"
  )

Restaurant.create!(
  name: "La Fondue - Saratoga",
  owner_id: 2,
  description: 'The NY Times editorial says "La Fondue is the place to go in the South Bay"! Consistently named the "Best Restaurant", "Best Special Occasion" and "Best Romantic Restaurant" in San Jose by the likes of The San Jose Mercury News, The Metro, The Silicon Valley Concierge Association, and The Wave Magazine. La Fondue brings quality service together with an eclectic chill vibe that caters to the "communal experience" we all crave. Nestled in the Saratoga foothills. La Fondue Restaurant was founded in 1992 as a boutique dining environment. A kind of Alpine wonderland meets Beverly Hills/19th century Paris lounge kind of vibe. Colors of crushed crimson, gold and royal purples blend with champagne oak and European antiques. La Fondue specializes in international fondues. Come, celebrate a memorable evening!',
  price_range: 3,
  address: "14550 Big Basin Way, Saratoga, CA 95070",
  phone: "(408) 867-3332",
  mailto: "mailto:reservations@lafondue.com",
  website: "http://www.lafondue.com/?page=0",
  lat: 37.2563550,
  lng: -122.0345950,
  img_url: "http://resizer.otstatic.com/v1/fDzI465IL8%2B687zSupRS4Q/23677896.jpg",
  opening: 61200,
  closing: 79200,
  seats: 20,
  menu: "Popular Items
$53.00
Cheddar

Beer, Spices
$55.00
Garden Vegetable
Salads - Chef

Romaine, carrots, mozzarella cheese, chef rolls, cucumbers, tomatoes, mushrooms
$29.00
Chocolate - The Flaming Tortoise

Milk Chocolate, Caramel, Pecans, Flambé
$55.00
Breast of Chicken (Org & Fr)"
  )

Restaurant.create!(
  name: "The Matterhorn Swiss Restaurant",
  owner_id: 2,
  description: "Located in the heart of San Francisco the Restaurant serves authentic Swiss cuisine in a smart Alpine setting. Our carefully crafted Fondue menu, extensive wine selections, impeccable service and elegant, yet cozy atmosphere brings the best of Switzerland to your dining experience.",
  price_range: 3,
  address: "2323 Van Ness Ave., San Francisco, CA 94109",
  phone: "(415) 885-6116",
  contact: "http://www.thematterhornrestaurant.com/~site/siteapps/contact.action?CMD=CMDElementEmailMe&FORM_TEMPLATE_NAME=emailme&HSID=1756769471&PARTNER_ID=1&TO_ADDRESS=7c3285c257a663b2033cf5a6cfbc872b62616c2e6e6574",
  website: "http://www.thematterhornrestaurant.com/",
  lat: 37.7970910,
  lng: -122.4237880,
  img_url: "http://resizer.otstatic.com/v1/fDzI465IL8%2B687zSupRS4Q/23895003.jpg",
  opening: 61200,
  closing: 73800,
  seats: 20,
  menu: 'Fondue Festival

all Fondues are served with a mixed green salad and fresh baguette. all Cheese Fondues contain white wine, garlic and spices $43.50 for 2 people
The "Original"

Blend of Emmenthal and gruyere cheeses
$21.75
Available in appetizer size
The "Half and Half"

Blend of Fribourg Vacherin and Gruyere cheeses
The "Spicy One"

Blend of Swiss cheeses with pepperoncinos and tomatoes
The "Oh la la"

Blend of Raclette and Camembert cheeses
The "Smoky One"

Blend of smoked cheeses
The "Mature One"

Swiss Gruyere Cheese
The "Healthy One"

Blend of Swiss cheeses with mixed organic herbs
The "Highlander"

Blend of Cheddar and Gruyere cheeses
The "Lazy One"

Stir free melted Raclette cheese served on a plate with mixed pickles and potatoes
$20.75
per person
Side of Cheese Fondues

Side orders with your Cheese Fondues
$4.00
Apples
$5.00
Potatoes
$5.00
Mushrooms
$6.00
Sausages
Beef Fondues

all beef Fondues are served with a variety of sauces and garnishes! $49 for 2 people
Fondue "Chinoise"

Thinly sliced aged beef to cook in a vegetable broth
Fondue "Bacchus"

Thinly sliced aged beef to cook in a delightful red wine broth
Fondue "Bourguignonne"

Cubes of aged beef to cook in oil
Side orders

with your Beef Fondues
$9.50
Tiger Prawns
$9.50
Scallops
$8.50
Pork
$6.50
Chicken
A La Carte
$21.50
Wienerschnitzel
$24.50
Veal Cordon Bleu
$18.50
Calves Liver
$23.50
Geschnaetzeltes'
  )

Restaurant.create!(
  name: "Orchestria Palm Court",
  owner_id: 2,
  description: "Our player pianos make us unique! But our food makes us special. We feature rich European-influenced American dishes using things like:
- Eggs from vegetarian-fed free-range chickens, high in healthy Omega 3 fatty acids
- White whole wheat flour, a variety naturally high in fiber yet light enough for pastry
- Vegetables from local farms that are certified organic growers
- Butter, milk, and ice cream from grass-fed cattle, another Omega 3 source.

Our food is not low-fat or low-calorie, but its ingredients are healthful. The meal will leave you feeling reinvigorated, not weighed down!",
  price_range: 2,
  address: "27 E. William St, San Jose, CA 95112",
  phone: "(408) 288-5606",
  mailto: "mailto:info@orchestriapalmcourt.com",
  website: "http://orchestriapalmcourt.com/",
  lat: 37.3290020,
  lng: -121.8844600,
  img_url: "http://resizer.otstatic.com/v1/fDzI465IL8%2B687zSupRS4Q/24006051.jpg",
  opening: 63900,
  closing: 75600,
  seats: 20,
  menu: "Small Plates
$6.40
Soup of the Day (Potato Leek)
$7.20
Mesclun Lettuces Salad

red grapes, walnuts, and Humboldt Fog goat cheese, sherry vinaigrette
$7.20
Seasonal Peach Salad

peaches, prosciutto, Gorgonzola cheese, pistachios, mixed organic greens, with peach vinaigrette
$12.00
Palm Court Cheese Plate

cheeses change weekly; with fruit
$13.60
Smoked Salmon Salad

tangerine, crispy capers, fennel
$13.60
Shrimp Scampi

in lemon-garlic butter
Entrees
$19.20
Austrian Goulash

braised beef, whole wheat spaetzle, bell peppers, onions, paprika, organic sour cream
$16.80
Vegetable Platter

sauteed market vegetables, wild rice salad, balsamic reduction
$17.60
Whole Wheat Pasta

with Butternut squash and mushrooms, in a sage Marsala cream sauce
$21.60
Shrimp Puttanesca

tomatoes, artichokes, capers, olives, anchovies, fingerling potatoes
$24.00
Chicken Saltimbocca

sage-rubbed, roasted w/provolone, crispy prosciutto, polenta, broccolini, Marsala
$24.80
Grass-fed Rib-Eye

mushroom-Swiss cheese Yukon Gold potatoes, Blue Lake beans
$24.80
Rainbow Trout

with roasted fennel in bechamel sauce, served with Swiss chard and quinoa"
  )

Restaurant.create!(
  name: "Chalet Ticino",
  owner_id: 2,
  description: "Our specialties include a wide variety of pasta dishes, cheese & beef fondue, raclette and other favorites from the Italian, French and German regions of Switzerland. Our menu changes on a monthly basis, and we seek to constantly provide you with the most exciting, innovative dishes inspired by the Canton Ticino region of Switzerland. For lunch we also serve salads, pasta and delicious Italian sandwiches. Alfresco dining is available on our terrace. We offer catering services through our Pasta Grotto Catering Division. Private dining can also be arranged for your special events. We look forward to getting to know you, and hope you enjoy our food and our company as well. It is our mission to offer you delicious food, warm and friendly service and charming European ambiance. We are committed to having you, our guest, feel genuinely welcomed while you enjoy a rewarding dining experience. We look forward to getting to know you, and hope you enjoy our food and our company as well.",
  price_range: 2,
  address: "1058-C Shell Blvd., Foster City, CA 94404",
  phone: "(650) 571-0507",
  mailto: "mailto:Alex@ChaletTicino.us",
  contact: "http://eat24hrs.com/restaurants/order2/menu.php?id=474",
  website: "http://chaletticino.us/",
  lat: 37.5499680,
  lng: -122.2643790,
  img_url: "http://resizer.otstatic.com/v1/fDzI465IL8%2B687zSupRS4Q/24009474.jpg",
  opening: 61200,
  closing: 75600,
  seats: 20,
  menu: "Antipasti
$7.95
A Trio Of Bruschetta And Crostini

garden fresh tomatoes, eggplant, roasted garlic, brie cheese and grape crostini
Antipasto Plate

prosciutto, salami, ham, mozzarella, gruyere, emmentaler cheese, olives and roasted red peppers topped with our roasted garlic marinade
$8.95
Small
$10.95
Large
$10.95
Skewered Rosemary Prawns And Crabcakes

prawns drizzled with pesto and petit crabcakes topped with red bell pepper coulie
$6.95
Sautéed Mushrooms

marsala wine, garlic, herbs and spices
Zuppa
Minestrone Soup
$4.50
Cup
$5.25
Bowl
Wedding Soup
$4.50
Cup
$5.25
Bowl
Cheesy Garlic Bread
$4.95
1/2 Loaf
$7.45
Loaf
Classic Garlic Bread
$4.25
1/2 Loaf
$6.95
Loaf
Insalata
$11.95
Grilled Chicken Caesar Salad
$7.95
Classic Caesar Salad
$7.95
House Salad
Swiss Specialties

served with our freshly-baked sourdough baguette
$18.95
Veal Zurich

strips of veal sautéed in white wine, a touch of cream, onions, and served with rosti potatoes and vegetables
$17.95
Rosti Con Salmoné

swiss potato pancake with light dill sauce topped with smoked salmon, capers and purple onions
$16.95
Bundener Raclette

gruyére cheese, three different swiss sausages and mixed pickles served with boiled potatoes and dijon mustard
Cheese Fondue

(two portions minimum) includes a chocolate fondue and your choice of soup or salad. served with our home-made rosti potatoes
$17.95
per person
Other Entrées

served with your choice of soup or salad
$22.95
Bistecca A La Maroccaine

new york steak grilled and topped with spicy butter, served with matchstick potatoes and fresh vegetables
$22.95
Rack Of Lamb

marinated then grilled and served with a mixed peppercorn sauce, roasted potatoes and fresh vegetables
$16.95
Chicken Piccata

served with fettucini
Pasta

served with our fresh baguette
$14.95
Rotolo

medallions of pasta filled with ground chicken, spinach and ricotta cheese, topped with our signature rosé sauce and served with fresh vegetables
$14.95
Penne And Grilled Chicken

served with our classic marinara sauce
$13.95
Eggplant Parmigiana

grilled eggplant layered in pasta sheets with mozzarella and parmesan cheese and topped with our classic marinara
$14.95
Beef Lasagna

ground beef, ricotta and mozzarella cheese in our classic bolognese sauce
$14.95
Risotto Ticino

grilled chicken over arborio rice and portobello mushrooms
Souffle Specials
Friday - Chocolate Souffle
Saturday - Grand Marnier Souffle
Desserts

ask about our dessert specials of the day
Swiss Bread Pudding
Chocolate Fondue
Warm Berries

sautéed in port wine with vanilla ice cream"
  )

Restaurant.create!(
  name: "Suppenküche",
  owner_id: 2,
  description: "Authentic German fare like pretzels & schnitzels plus imported beers served in a glass boot.",
  price_range: 2,
  address: "525 Laguna St, San Francisco, CA 94102",
  phone: "(415) 252-9289",
  mailto: "suppe@suppenkuche.com",
  website: "http://www.suppenkuche.com/",
  lat: 37.7763007,
  lng: -122.4264457,
  img_url: "",
  opening: 61200,
  closing: 79200,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Walzwerk",
  owner_id: 2,
  description: "East German eatery serving classic dishes like sausages & schnitzel as well as imported beers.",
  price_range: 2,
  address: "381 S Van Ness Ave, San Francisco, CA 94103",
  phone: "(415) 551-7181",
  website: "http://www.walzwerk.com/",
  lat: 37.7672714,
  lng: -122.4174476,
  img_url: "",
  opening: 63000,
  closing: 79200,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Gaumenkitzel",
  owner_id: 2,
  description: "Tickle your taste buds at Gaumenkitzel, the Bay Area’s go-to place for fresh organic German home-style comfort food and German sweet treats. Guten Appetit und Prost!",
  price_range: 2,
  address: "2121 San Pablo Ave, Berkeley, CA 94702",
  phone: "(510) 647-5016",
  contact: "http://gaumenkitzel.net/reservation--gift-certificates.html",
  website: "http://www.gaumenkitzel.net/",
  lat: 37.8676434,
  lng: -122.2913952,
  img_url: "",
  opening: 61200,
  closing: 79200,
  seats: 8,
  menu: ""
)

Restaurant.create!(
  name: "Gasthaus Leopold's",
  owner_id: 2,
  description: "Leopold’s is a bar/restaurant completely in Bavarian style. Expect all the German and Austrian foods you can think of, and they deliver in taste and portions. They even confirm the stereotype in their waiters and waitresses who wear typical Oktoberfest outfits, and you can order a two-liter ‘boot’ draught beer. On those warm spring and summer evenings, you can also sit outside. It might not be the coziest place in Russian Hill, but it’s fun. The atmosphere and the extensive beer menu will make you say ‘prost’!",
  price_range: 2,
  address: "2400 Polk St, San Francisco, CA, 94109",
  phone: "(415) 474-2000",
  mailto: "inquiries@leopoldssf.com",
  contact: "http://www.leopoldssf.com/contact.html",
  website: "http://www.leopoldssf.com/",
  lat: 37.798936,
  lng: -122.422151,
  img_url: "",
  opening: 63000,
  closing: 79200,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Biergarten",
  owner_id: 2,
  description: "Biergarten is a small (Bavarian style) neighborhood beer garden in the heart of Hayes Valley",
  price_range: 2,
  address: "424 Octavia St, San Francisco, CA, 94102",
  phone: "(415) 252-9289",
  website: "http://www.biergartensf.com/",
  lat: 37.776105,
  lng: -122.424127,
  img_url: "https://media-cdn.tripadvisor.com/media/photo-s/02/fb/ba/3a/biergarten.jpg",
  opening: 54000,
  closing: 75600,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Rosamunde Sausage Grill",
  owner_id: 2,
  description: "An internationally known, legendary destination in San Francisco, the Haight is the birthplace of Rosamunde Sausage Grill in 1998. Our Haight Street location sits next door to Toronado beer bar, the single most important Bar for the craft beer movement, propelling SF to the forefront in the early days of the '80s. Our sausages are made to feed the craft beer drinker. Locals and tourists alike order their sausage and enjoy them next door at the bar! And have you tried Burger Tuesday?",
  price_range: 2,
  address: "545 Haight St, San Francisco, CA, 94117",
  phone: "(415) 437-6851",
  contact: "http://www.rosamundesausagegrill.com/haight-street.html",
  website: "http://www.rosamundesausagegrill.com/",
  lat: 37.771837,
  lng: -122.431125,
  img_url: "http://www.rosamundesausagegrill.com/uploads/3/0/9/4/30949701/1624965.jpg",
  opening: 41400,
  closing: 79200,
  seats: 0,
  menu: "grilled sausage on a french roll

step 1 - choose a sausage from list:
beer sausage
smoked, spicy pork & beef, Lagunitas IPA
cheddar brat
smoked pork & Wisconsin sharp cheddar
knockwurst
grass-fed beef
nuernberger bratwurst
savory pork
weisswurst
traditional style
hungarian
smoked pork w/ garlic
chicken cherry
smoked, w/ black cherries
chicken habanero
spicy & smoked w/ Sauza Tequila Gold
hot italian
spicy pork
mission street
knockwurst wrapped w/ bacon
merguez
lamb w/ moroccan spices
duck
figs & brandy
wild boar
apples, cranberries & spice
vegan apple sage
smoked, w/ potato & ginger
vegan italian
red wine, garlic & fennel
vegan kielbasa
polish-style sausage
daily specials
varies

step 2 - choose two toppings:
grilled onions
sauerkraut
sweet peppers
hot peppers
spicy beef chili
(additional toppings available)
(gluten-free roll available)


sausage plate
w/ green salad, baked beans (v), sauerkraut
choose one or two sausages

currywurst
sliced knockwurst in curry ketchup w/ fries

sides
german baked beans (vegan)
german potato salad w/ bacon
green salad w/ walnuts & blue cheese
bag of chips
pickle

condiments
ketchup
curry ketchup
dijon mustard
honey-wasabi dijon
spicy brown mustard
garlic-pepper mayonnaise"
)

Restaurant.create!(
  name: "Rosamunde Sausage Grill - Mission",
  owner_id: 2,
  description: "Rosamunde on Mission in San Francisco features 27 beers on tap, wine on tap and 40+ bottle selection all to go perfectly with your choice of grilled sausages and all the sides. Missionites can enjoy the beer garden style seating on our patio or inside on our community tables while feeding on their favorite sausage. With BART at 24th & Mission we're just steps away from happy hour fun ($1 off all taps M-F 4-7pm). Come see us on a sunny weekend for sausage brunch served Sat & Sun 10 am to 3 pm",
  price_range: 2,
  address: "2832 Mission Street, San Francisco, CA 94110",
  phone: "(415) 970-9015",
  contact: "http://www.rosamundesausagegrill.com/mission-street.html",
  website: "http://www.rosamundesausagegrill.com/",
  lat: 37.751571,
  lng: -122.418655,
  img_url: "http://www.rosamundesausagegrill.com/uploads/7/9/4/8/79487746/4847412.jpg",
  opening: 41400,
  closing: 86400,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Rosamunde Sausage Grill - Downtown Oakland",
  owner_id: 2,
  description: "Grilled sausages and craft beer for all eaters served in a friendly, casual environment.",
  price_range: 2,
  address: "911 Washington St, Oakland, CA 94607",
  phone: "(510) 338-3108",
  contact: "http://www.rosamundesausagegrill.com/downtown-oakland.html",
  website: "http://www.rosamundesausagegrill.com/",
  lat: 37.801716,
  lng: -122.274506,
  img_url: "http://www.rosamundesausagegrill.com/uploads/3/0/9/4/30949701/9228040.jpg",
  opening: 39600,
  closing: 82800,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Rosamunde Sausage Grill - Temescal",
  owner_id: 2,
  description: "Hip hole-in-the-wall spot for a variety of housemade grilled sausages on buns, plus craft beer.",
  price_range: 2,
  address: "4659 Telegraph Ave, Oakland, CA 94609",
  phone: "(510) 338-3536",
  contact: "http://www.rosamundesausagegrill.com/temescal-oakland.html",
  website: "http://www.rosamundesausagegrill.com/",
  lat: 37.834053,
  lng: -122.263434,
  img_url: "http://www.rosamundesausagegrill.com/uploads/7/9/4/8/79487746/7239648.jpg",
  opening: 41400,
  closing: 82800,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Paprika",
  owner_id: 2,
  description: "Global gastropub eats & a broad list of brews in a modern beer hall setting with big windows.",
  price_range: 2,
  address: "3324 24th St, San Francisco, CA 94110",
  phone: "(415) 375-1477",
  website: "https://www.facebook.com/Paprika-522063811188717/",
  lat: 37.752379,
  lng: -122.419108,
  img_url: "https://s3-media1.fl.yelpcdn.com/bphoto/p1mo4pKxoqRFxZ74JsnHXQ/ls.jpg",
  opening: 41400,
  closing: 84600,
  seats: 0,
  menu: "Lunch -- Goulash, Sausages, Salads, Vegan, Soups.
  Dinner -- Goulash, Sausages, Salads, Vegan.
  Drinks -- Czech and German draft beers, Wine"
)

Restaurant.create!(
  name: "Schmidt's",
  owner_id: 2,
  description: "Communal tables, an extensive beer selection & hearty German grub highlight this casual venue.",
  price_range: 2,
  address: "2400 Folsom St, San Francisco, CA 94110",
  phone: "(415) 401-0200",
  contact: "http://schmidts-restaurant.com/new-page-1/",
  website: "http://schmidts-restaurant.com/",
  lat: 37.758778,
  lng: -122.414971,
  img_url: "https://static1.squarespace.com/static/54654064e4b099303e2ce602/t/5854698cf7e0abf4573fdd65/1481927140195/Schmidts_3.jpg?format=750w",
  opening: 61200,
  closing: 79200,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Bistro Gambrinus",
  owner_id: 2,
  description: "Gambrinus is a legendary king of Flanders, known as patron of beer. As a tribute to king Gambrinus we bring you finest selection of beers from all over the world accompanied by our great food menu featuring American classics as well as tradition Easter Europen Eats. We offer casual atmosphere where you can relax, eat and meet your friends. Bistro Gambrinus is not an ordinary restaurant: it is more like a traditional Europen Bistro",
  price_range: 2,
  address: "1813 Fulton St, San Francisco, CA 94117",
  phone: "(415) 221-7777",
  website: "http://www.beerandgrill.com/",
  lat: 37.775569,
  lng: -122.446989,
  img_url: "http://www.dziuggy.com/gbr/gfx/bgoutside.jpg",
  opening: 43200,
  closing: 79200,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Steins",
  owner_id: 2,
  description: "Restaurant & bar offering steins of beer, including many European varieties, plus German fare & TVs.",
  price_range: 2,
  address: "731 Clement St, San Francisco, CA 94118",
  phone: "(415) 221-3888",
  website: "https://www.facebook.com/Steins-227680483955482/",
  lat: 37.782635,
  lng: -122.467187,
  img_url: "https://scontent-frt3-1.xx.fbcdn.net/v/t1.0-1/c48.14.172.172/p200x200/318581_238417302881800_1706080519_n.jpg?oh=7df096095489a663af134af2d69c3fb9&oe=58DA58B5",
  opening: 57600,
  closing: 82800,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Brotzeit Lokal",
  owner_id: 2,
  description: "Casual German-American eatery & bar with communal tables, counter seats & waterfront beer garden.",
  price_range: 2,
  address: "1000 Embarcadero, Oakland, CA 94606",
  phone: "(510) 645-1905",
  mailto: "brotzeitlokal@hotmail.com",
  contact: "http://brotzeitbiergarten.com/menu/",
  website: "http://brotzeitbiergarten.com/",
  lat: 37.787698,
  lng: -122.253963,
  img_url: "",
  opening: 41400,
  closing: 75600,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Harry's Hofbrau - San Jose",
  owner_id: 2,
  description: "Known for its roast turkey, this spot also features sandwiches & salads along with a huge beer list.",
  price_range: 2,
  address: "390 Saratoga Ave, San Jose, CA 95129",
  phone: "(408) 243-0434",
  contact: "http://www.harryshofbrau.com/contact/",
  website: "http://www.harryshofbrau.com/",
  lat: 37.320962,
  lng: -121.970824,
  img_url: "",
  opening: 39600,
  closing: 82800,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Original Gravity",
  owner_id: 2,
  description: "Mellow beer bar with unique craft brews, sausage sandwiches & other pub fare, plus an outdoor patio.",
  price_range: 2,
  address: "66 S 1st St, San Jose, CA 95113",
  phone: "(408) 915-2337",
  website: "http://originalgravitypub.com/",
  lat: 37.335124,
  lng: -121.889528,
  img_url: "",
  opening: 41400,
  closing: 81000,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Gunther's Restaurant",
  owner_id: 2,
  description: "Hearty breakfasts & German-inspired lunch & dinner fare, with cafeteria-style service.",
  price_range: 2,
  address: "1601 Meridian Ave, San Jose, CA 95125",
  phone: "(408) 266-9022",
  mailto:"info@guntherscatering.com",
  contact: "http://www.guntherscatering.com/ContactUs.aspx",
  website: "http://www.guntherscatering.com/",
  lat: 37.294264,
  lng: -121.914178,
  img_url: "https://media-cdn.tripadvisor.com/media/photo-s/07/bc/90/58/here-it-is.jpg",
  opening: 25200,
  closing: 72000,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Ludwig's German Table",
  owner_id: 2,
  description: "A fresh new German dining experience set within a wonderful historic building in downtown San Jose.",
  price_range: 2,
  address: "261 N 2nd St, San Jose, CA 95112",
  phone: "(650) 766-9158",
  lat: 37.340382,
  lng: -121.892775,
  img_url: "https://media-cdn.tripadvisor.com/media/photo-s/0c/84/d4/fa/ludwig-s-german-table.jpg",
  opening: 57600,
  closing: 82800,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Gestalt",
  owner_id: 2,
  description: "Bar & grill known for its specialty sandwiches, beer menu & collection of pinball machines.",
  price_range: 2,
  address: "3159 16th St, San Francisco, CA 94103",
  phone: "(415) 655-9935",
  website: "http://gestalt.haus/",
  lat: 37.764614,
  lng: -122.423300,
  img_url: "",
  opening: 43200,
  closing: 90000,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Tap Haus",
  owner_id: 2,
  description: "German-inspired beer hall for tap brews at a lively bar, plus sausages, pretzels & other snacks.",
  price_range: 2,
  address: "2516 Durant Ave, Berkeley, CA 94704",
  phone: "(510) 280-5000",
  mailto: "berkeley.taphaus@gmail.com",
  website: "http://berkeleytaphaus.wixsite.com/taphaus",
  lat: 37.867672,
  lng: -122.258142,
  img_url: "https://b.zmtcdn.com/data/pictures/9/17848799/e0ad2f998a74dfe6a89e4cf4d8b6d3c3.jpg",
  opening: 50400,
  closing: 93600,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "The Junket",
  owner_id: 2,
  description: "European-styled German cafe with sandwiches, bratwurst & beers galore in a relaxed environment.",
  price_range: 2,
  address: "235 El Cerrito Plaza, El Cerrito, CA 94530",
  phone: "(510) 524-4622",
  website: "http://www.thejunket.com/",
  lat: 37.899001,
  lng: -122.299001,
  img_url: "http://www.thejunket.com/wp-content/uploads/2011/04/IMG_9848.jpg",
  opening: 30600,
  closing: 64800,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Gourmet Haus Staudt",
  owner_id: 2,
  description: "Rustic but festive hangout with garden seating pairs hearty German grub with beers on tap.",
  price_range: 2,
  address: "2615 Broadway, Redwood City, CA 94063",
  phone: "(650) 364-9232",
  mailto: "info@gourmethausstaudt.com",
  website: "http://www.gourmethausstaudt.com/",
  lat: 37.486112,
  lng: -122.233532,
  img_url: "",
  opening: 36000,
  closing: 72000,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Esther’s German Bakery",
  owner_id: 2,
  description: "Snug cafe serving traditional German comfort dishes, brews & baked goods in a welcoming atmosphere.",
  price_range: 2,
  address: "987 N San Antonio Rd, Los Altos, CA 94022",
  phone: "(650) 941-4463",
  mailto: "customerservice@esthersbakery.com",
  website: "http://www.esthersbakery.com/",
  lat: 37.399964,
  lng: -122.113952,
  img_url: "http://www.esthersbakery.com/bild1.gif",
  opening: 27000,
  closing: 75600,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Baltica",
  owner_id: 2,
  description: "Baltica is the Peninsula's first restaurant offering a menu of Eastern European & Taxes Style BBQ, smoked outdoors on a charcoal grill. Entrees range from a classic Chicken Kiev to Barbecued meat. You can also enjoy European style dumplings called Pelmeni and Vareniki filled with Chicken, Beef & Lamb, Potato & House Made Farmers Cheese. Exclusively Hand made on our premises. Baltica is the place to satisfy a variety of cravings and all dishes are prepared fresh, with quality ingredients. We also provide takeout, delivery and off-site catering for special events.
We have a full liquor bar with 26 Choices of European Beer . Please enjoy our delicious food with drinks!! ",
  price_range: 2,
  address: "33 W 25th Ave, San Mateo, CA 94403",
  phone: "(650) 525-1488",
  mailto: "mybaltica@gmail.com",
  contact: "http://mybaltica.wixsite.com/baltica/contact",
  website: "http://mybaltica.wixsite.com/baltica",
  lat: 37.543759,
  lng: -122.306584,
  img_url: "https://resizer.otstatic.com/v1/fDzI465IL8%2B687zSupRS4Q/24063448.jpg",
  opening: 39600,
  closing: 75600,
  seats: 20,
  menu: "Cold Appetizer
$7.95
Baltic Kilka

Kilka (5 Sprats) served with sliced Egg, Rye Bread and Country Style Potato
$7.95
Baltic Herring

Marinated Herring served with marinated onion & country style potato
$9.95
Oladi with Cream Cheese & Salmon

Euro style pancakes topped with the pickled salmon & cream cheese
$8.95
Assorted Marinated Veggie Plate

Assorted Marinated Veggie Plate (Zakuska)
$12.95
Blini (6) served with Red Caviar
Hot Appetizer
$7.95
Mushroom Julienne

Rich savory mushroom, three cheese blend, onion & sour cream soufflé
$8.95
Parmesan Eggplant

Eggplant topped with parmesan cheese & house made marinara
$8.95
Stuffed Blintzes with Beef

Stuffed crepes with Beef served with Mushroom Sause
$7.95
Chebureky

Stuffed Fried Turnovers with Beef & Lamb Fillings
$8.95
Assorted Piroshky (4)

Potato (Vegetarian); Beef; Spinach & Salmon (Vegetarian); Mushroom & Leek (Vegetarian)
$12.95
Lumpiang Shanghai

Fried pork egg rolls (10 pic)
Euro Salads
$8.95
Olivier Salad

European style potato salad
$6.95
German Cucumber Salad

Sliced Cucumbers with Dill in Sour Cream Sause
$6.95
Marinated Cabbage
Green Salads

Choice of: Shrimp, Grilled Pork or Chicken, add - $3
$9.95
Roasted Grape Salad

Arugula mix, pear, walnuts, and caramelized roasted grapes
$11.95
Grilled Peach and Arugula Salad

Arugula mix, pancetta, pecan, raisins & goat cheese, house dressing & peach
$8.95
Cranberry Spinach

Spinach, cranberries, roasted almond & house vinegar dressing
Soups
$7.95
Borstch

Beets & vegetables cook on beef stock, 12 oz
$7.95
Mushroom Soup

A blend of porcini, & champignon mushrooms with barley, 12oz
$7.95
Solyanka

Thick, rich soup with variety of meats, 12oz
$7.95
Okroshka

Cold vegetable soup on drinkable Yogurt or Kvass (may be served with meat)
European Style Dumplings
Beef & Lamb Mix or Chicken

Choice of:
$14.95
Pelmeny

Exclusively Hand Made on Premises from All Natural Ingredients May be served with bullion as a Pelmeny Soup
Potato with Fried Onion or House Made Farmers Cheese

Choice of:
$14.95
Vareniky

Exclusively Hand Made on Premises from All Natural Ingredients
Vegetarian
$14.95
Pan Fried Potato with Mushrooms
$14.95
Fettuccini with Cheese & Tomato Sause
$14.95
Thin Rice Noodles (Bihon)

Asian Thin Rice Noodles with Veggie & Shrimps (Ask for Chicken, can be added)
$14.95
Vegetables (Bicol)

Asian Sautéed Veggie & Shrimp in Coconut Milk (Ask for Chicken, can be added)
Fish
$19.95
Pompano Fish

Deep Fried or Grilled with Sweat and Sour Ginger Sauce
$19.95
Baked Salmon

Slow baked Salmon
$19.95
Milkfish

Deep Fried or Grilled (Gluten - free) (deboned)
$17.95
Gefilte Fish

Dish made from a poached mixture of ground deboned fish, such as white fish
Side Dish
Buckwheat
Steamed or Garlic Rice
Sautéed Spinach
Sautéed Green Mix
Country Style Potato
Mash potato
Pasta
Entrée
$17.95
Beef Stroganoff

Thin cuts of Beef Strips sautéed in Sour Cream Sauce
$17.95
Beef Tongue in Creamy Mushroom Sauce

Thin slices of Beef Tongue topped with Creamy Mushroom Sauce
$14.95
Beef Liver in Garlic & Herbs Sauce

Thin slices of Beef Liver with Garlic & Herbs sauce
$16.95
Goulash

Rustic Beef Stew has many variations throughout Eastern Europe
$16.95
Asian Beef Stew( Kaldareta)

It is a Spanish-influenced dish in Asia
$23.95
Rack of Lamb

Cooked on Open Fire
$16.95
A La Lulay-Kebob

Grounded Lamb with Herbs, Mediterranean Originated
$15.95
Lamb Shank

Slowly Sauté in Savor Tomato Sauce till perfection
$17.95
Chicken Kiev

Stuffed, Breaded Chicken Breast with Butter & Herbs (Allow 20-25 min to cook)
$16.95
Pozharsky Cutlets

Rustic Traditional Russian Style Diced Chicken Patties
$15.95
Chicken on Skewers

Marinated Chicken in Red Asian Sauce and Grilled on Open Fire
$16.95
Grilled Pork

Marinated Sliced Pork in Black Asian Ascent Sause and Grilled on Open Fire
$16.95
Schnitzel

Thinly Cut Pork, Breaded & Pan Fried
$16.95
German Sausages

Assorted German Sausages
$16.95
Stuffed Cabbage (Golubtsy)

Cabbage Rolls Stuffed with Natural Ground Turkey & Organic Brown Rice
Wooden Smoke BBQ (Gluten - Free)

All BBQ plates comes with Baked Beans & Potato Salad. Extra Side Dish - $3
$14.95
Pork Ribs BBQ
$12.95
Chicken 1/2 BBQ
$9.95
Chicken 1/4 BBQ
$16.95
Beef Brisket
$13.95
Hot Links BBQ
$13.95
Polish Sausages
$17.95
Combo Chicken & Pork Ribs
$17.95
Combo Chicken & Beef Brisket
$16.95
Combo Chicken & Hot Links
$16.95
Combo Chicken & Polish Sausages
$18.95
Combo Beef Brisket & Pork Ribs
$17.95
Combo Beef Brisket & Hot Links
$17.95
Combo Beef Brisket & Polish Sausages
$17.95
Combo Pork Ribs & Polish Sausages
$17.95
Combo Pork Ribs & Hot Links
$25.00
Whole Slab Pork Ribs BBQ Plate
$28.95
Family Combo Plate

Pork, Beef, Chicken, Hot Links, 2 Sides of Beans & 2 Potato Salad
Beverages
$2.00
Sodas
$6.00
Tea Pot

Brewed Loose Leaf Ceylon Black Tea (can be served with Milk)
$6.00
Fresh Ginger Tea Pot

Fresh Sliced Ginger with Lemon and Pure Honey, served Hot (caffeine free)
$2.75
Tea Bags

Green, Mint, Chamomile, Black
$1.75
Iced Tea
$2.75
Coffee
$2.95
Juice

Apple, Orange, Tomato, Pineapple, Cranberry, Calamansi (lime)
$2.95
Milk
$3.00
Hot Cocoa Mix
$2.95
Kvass

Traditional Slavic and Baltic fermented beverage made from rye bread"
)

Restaurant.create!(
  name: "Samovar Grocery and Catering",
  owner_id: 2,
  description: "Samovar Grocery and Catering located in the heart of Silicon Valley since 1986.
Our store front features large and diverse variety of food from around the globe, mostly from Poland, Russia, Ukraine, Germany, Hungary, Armenia, Belorussia, Lithuania, Israel, Bulgaria.
Our kitchen offers opportunity to taste hot home-style Russian traditional food in-store and to-go, as well as variety of popular salads and entries in our refrigerated section.
Corporate and private catering available on the first come, first serve basis due to high demand and limited capacity.",
  price_range: 2,
  address: "1077 Independence Ave, Mountain View, CA 94043",
  phone: "(650) 969-5327",
  mailto: "socium@gmail.com",
  website: "http://bestrussianfood.com/",
  lat: 37.419475,
  lng: -122.096624,
  img_url: "http://bestrussianfood.com/wp-content/uploads/2014/10/samovar_store1.jpg",
  opening: 39600,
  closing: 75600,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Bierhaus",
  owner_id: 2,
  description: "A beer garden that has gluten-free options, grass-fed beef burgers & benches imported from Germany.",
  price_range: 2,
  address: "383 Castro St, Mountain View, CA 94041",
  phone: "(650) 395-8209",
  mailto: "bier@bierha.us",
  website: "http://bierha.us/",
  lat: 37.391423,
  lng: -122.080159,
  img_url: "",
  opening: 39600,
  closing: 75600,
  seats: 24,
  menu: ""
)

Restaurant.create!(
  name: "Steins Beer Garden",
  owner_id: 2,
  description: "Welcome to Steins Beer Garden & Restaurant! Steins is a modern American take on the classic German biergarten, featuring 31 taps of craft and import beer and Modern American Gourmet Comfort Food from Executive Chef Colby M Reade.",
  price_range: 2,
  address: "895 Villa St, Mountain View, CA 94041",
  phone: "(650) 963-9568",
  website: "http://steinsbeergarden.com/",
  lat: 37.393916,
  lng: -122.079994,
  img_url: "http://steinsbeergarden.com/steinsfour/wp-content/uploads/2014/10/Website-1-1170x400.jpg",
  opening: 39600,
  closing: 82800,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Dittmer's Gourmet Meats & Wurst-Haus",
  owner_id: 2,
  description: "Old-timey gourmet butcher shop offering a wide array of meats & sausages, plus deli sandwiches.",
  price_range: 2,
  address: "Village Court Shopping Center, 4540 El Camino Real, Los Altos, CA 94022",
  phone: "(650) 941-3800",
  website: "http://www.dittmers.com/",
  lat: 37.401527,
  lng: -122.114980,
  img_url: "https://s3-media4.fl.yelpcdn.com/bphoto/nlV66sDku368nm_AY1NO9A/o.jpg",
  opening: 32400,
  closing: 64800,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Hardy's Bavaria",
  owner_id: 2,
  description: "Traditional German beer served alongside sausages, sauerkraut & strudel in a relaxed atmosphere.",
  price_range: 2,
  address: "111 W Evelyn Ave, Sunnyvale, CA 94086",
  phone: "(408) 720-1531",
  lat: 37.377728,
  lng: -122.029506,
  img_url: "",
  opening: 59400,
  closing: 77400,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Tyrolean Inn Restaurant",
  owner_id: 2,
  description: "
Come on out and have a good time at the Tyrolean Inn! Wir wünschen Ihnen einen guten Appetit zum Essen wie aus Grossmutter's Küche.
(We wish you a good appetite for a meal like grandma used to cook at home.)
",
  price_range: 2,
  address: "9600 Highway 9, Ben Lomond CA 95005",
  phone: "(831) 336-5188",
  mailto: "mailto:chuck@tyroleaninn.com",
  website: "http://www.tyroleaninn.com",
  lat: 37.089621,
  lng: -122.092318,
  img_url: "http://www.tyroleaninn.com/tyrolean%20inn/Side%20of%20Tyro.jpg",
  opening: 61200,
  closing: 75600,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Münchner Haus – Rita's German Deli",
  owner_id: 2,
  description: "For more than 30 years, Fremont’s Münchner Haus (House of Munich) has provided San Francisco East Bay residents with fine, authentic German foods.",
  price_range: 2,
  address: "39212 Fremont Blvd, Fremont, CA 94538",
  phone: "(510) 793-6411",
  website: "https://ritasgermandeli.wordpress.com",
  lat: 37.547275,
  lng: -121.985366,
  img_url: "https://s3-media2.fl.yelpcdn.com/bphoto/FjUJ6ZTgU1ydqwtBDr6r4Q/o.jpg",
  opening: 36000,
  closing: 68400,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Harry's Hofbrau - San Leandro",
  owner_id: 2,
  description: "Cafeteria-style spot focused on hand-carved meats & especially known for whole roasted turkey",
  price_range: 2,
  address: "14900 East 14th Street, San Leandro, CA 94578",
  phone: "(510) 357-1707",
  website: "http://www.harryshofbrau.com/",
  lat: 37.706596,
  lng: -122.129350,
  img_url: "",
  opening: 39600,
  closing: 82800,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "Harry's Hofbrau - Redwood City",
  owner_id: 2,
  description: "Hearty portions of meat/comfort food served cafeteria-style since 1954 in a rustic, dark-wood space.",
  price_range: 2,
  address: "1909 El Camino Real, Redwood City, CA 94063",
  phone: "(650) 366-3733",
  website: "http://www.harryshofbrau.com/",
  lat: 37.477824,
  lng: -122.223157,
  img_url: "",
  opening: 39600,
  closing: 82800,
  seats: 0,
  menu: ""
)

Restaurant.create!(
  name: "DJ's Bistro",
  owner_id: 2,
  description: "Festive European cafe serving up Wiener schnitzels & Hungarian goulash, plus imported beer.",
  price_range: 2,
  address: "1825 Sutter St #C, Concord, CA 94520",
  phone: "(925) 825-3277",
  website: "http://www.djs-bistro.com/",
  lat: 37.973757,
  lng: -122.038321,
  img_url: "http://djs-bistro.com/DJPic1.jpg",
  opening: 39600,
  closing: 75600,
  seats: 100,
  menu: ""
)

Restaurant.create!(
  name: "Little Red Riding Truck",
  owner_id: 2,
  description: "My name is Viktoria and I am the owner of the Little Red Riding Truck. I’m from a very small village in Germany called Kesbern. It’s surrounded by forests and wide green meadows. Don’t worry if you never have heard of it it has only a population of approx. 300.
I grew up in the restaurant and hotel business of my family. It’s in its third generation now and we serve traditional German food as you only can imagine! Schnitzel, Sauerkraut, Spätzle, Potatoes, Potatoes, Potatoes (in all variations), Sausages, Red Cabbage, Roasts, etc. and everything home made, of course, from old recipes from old grandma chefs with a lot of experiences.
While I was traveling the globe I found San Francisco as my home away from home. I spent over a year in this city and then decided to bring my family owned recipes to the city in a cute truck with a great German theme from the Grimm Brothers.
The authentic dishes are trained from my mother who has over 30 years kitchen experience, to guarantee the authentic delicious tastes. Of course, all home made!

Follow us on Twitter and Facebook for updates on where we will be!",
  price_range: 2,
  address: "San Francisco, CA",
  phone: "(415) 666-6821",
  website: "http://www.littleredridingtrucksf.com/",
  mailto: "littleredridingtrucksf@gmail.com",
  lat: 37.774929,
  lng: -122.419416,
  img_url: "https://static.wixstatic.com/media/7df2e8_4bc71fe479bf4f3ca7abf9539827a930.jpg/v1/fill/w_455,h_135,al_c,q_80,usm_0.66_1.00_0.01/7df2e8_4bc71fe479bf4f3ca7abf9539827a930.jpg",
  opening: 61200,
  closing: 72000,
  seats: 0,
  menu: ""
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

Review.create!(
  user_id: 1,
  restaurant_id: 1,
  date: "June 29, 2016",
  rating: 1,
  rate_food: 3,
  rate_ambience: 3,
  rate_service: 5,
  rate_value: 3,
  body: "Nuremberg brat delicious. Wiener schnitzel not so good. Worst potato salad ever."
)

Review.create!(
  user_id: 2,
  restaurant_id: 1,
  date: "June 19, 2016",
  rating: 5,
  rate_food: 5,
  rate_ambience: 5,
  rate_service: 5,
  rate_value: 5,
  body: "Outstanding food, service, beer selection, ambiance! We dive an hour+ and it's been great both times."
)

Review.create!(
  user_id: 1,
  restaurant_id: 2,
  date: "July 1, 2016",
  rating: 2,
  rate_food: 2,
  rate_ambience: 1,
  rate_service: 3,
  rate_value: 2,
  body: 'This is our second visit, and the first time was much, much better. I will come back and try it again, and hopefully, I will find this time was an off night for the kitchen. Because it was a second visit, I guess I paid more attention to the "decor". The cafe is downright dingy, with . peeling wallpaper, and very much in need of repainting. The service was good, but this time the timing was way off. I still had a good third of my soup to go, when out came the main plates. I saw the same rushing of courses at the next table as well, so assume it was by design. Last time, I had the veal schnitzel and it was good. This time, I had the pork schnitzel, touted as the "Best in Town". It was a large portion and well breaded, but it was also dry, the meat chewy, and the taste bland. The accompanying sauerkraut was cooked to where it had lost all interest in life. A side of "homemade potatoes" were diced new potatoes so long cooked they had become an oil soaked memory. My dinner companion had the goulash. The meat was tasty, plentiful, and tender. Alas, the potato dumplings that came with them, were like scoops of gluey starch. For dessert my companion had strudel: two large pieces with equally large dollops of whipped cream. It looked very good and I understand it was excellent. In fairness, the server, on his own, brought two settings and an extra plate and two glasses of complimentary dessert wine - and even made two tries to get me to share the dessert. I know I was a total curmudgeon, but my dinner was sitting like a lump and good as the dessert looked, the better part of valor was to skip it. Again, we will come back to see if we can "recreate" our first experience.'
)

Review.create!(
  user_id: 2,
  restaurant_id: 2,
  date: "June 10, 2016",
  rating: 4,
  rate_food: 4,
  rate_ambience: 5,
  rate_service: 5,
  rate_value: 4,
  body: "Café Europa is a nice place to visit for a special occasion. The schnitzels were excellent, and the service excellent. I was disappointed in the tiny pirogis, even though there were six of them for an appetizer. The mixed vegetables that accompanied my schnitzel were bland and slightly overcooked. I was shocked that the restaurant could not provide coffee or tea. Since I always do coffee with dessert, I declined the apple strudel, which sounded excellent. The prices, especially for the appetizers are very high. For our 7pm reservation on a Friday night, parking was very easy in the neighborhood. Our waiter, Daniel, was outstanding, explaining all the different dishes and attentive to all our needs for the evening."
)

Review.create!(
  user_id: 1,
  restaurant_id: 3,
  date: "June 26, 2016",
  rating: 4,
  rate_food: 3,
  rate_ambience: 5,
  rate_service: 5,
  rate_value: 5,
  body: "Service never been better, greatly improved over the last few years. Only fresh bread served (big deal for me). They reduced their menu in the last 2 years and have kept their best dishes. My only complaint is the stock brown sauce, appearing with several dishes is extremely salty. This would be an easy thing to fix, yet diners unlikely to mention. The patio was full, yet not too loud, plenty of servers, and an uplifting, relaxing, hearty meal. You get a generous entrè, salad, soup, bread and dessert. The soup, I've forgotten the variety, was significantly better than the offering in years past."
)

Review.create!(
  user_id: 2,
  restaurant_id: 3,
  date: "June 19, 2016",
  rating: 1,
  rate_food: 3,
  rate_ambience: 3,
  rate_service: 1,
  rate_value: 1,
  body: "The past two times we've been to this restaurant we've had unacceptable service. Waited too long for a server to come to our table, took half our drink orders and then was pulled away to another table by the manager. I had to go and get another server or the hostess (not sure which) and complain - she did a reasonably good job and getting things on track but the initial experience was inexcusable. My wife saw something on their on-line menu and when she ordered it was told they didn't have it and that was just for Octoberfest - it's June for crying out loud - why does your website have menu items that aren't available for another four months!!! We ended up sharing some appetizers and the only good thing about the experience was the beer. We'll never return to this restaurant. Germans are known for efficiency which makes me question the authenticity of this restaurant."
)

Review.create!(
  user_id: 1,
  restaurant_id: 4,
  date: "July 3, 2016",
  rating: 3,
  rate_food: 3,
  rate_ambience: 5,
  rate_service: 5,
  rate_value: 5,
  body: "We love Speisekammer and tell all of our friends about it. We love the bar, the food, the menu, the servers, the atmosphere and the wonderful beers and cocktails. This visit was very sub-par food-wise however. Our pretzel was good, though we realized later we did not get the cheese sauce that always comes with it. I ordered the roasted pork with mashed potatoes and sauerkraut. The sides were great but the pork had an odd, gamey taste and very gray. I don\'t know whether it was overcooked or just a poor preparation, but I did not eat it. My bf had the jagerschnitzel so we shared his piece of meat. The apple strudel with vanilla ice cream was divine. We will return, but never order the roasted pork dish again. (It\'s the first listing under specialties)."
)

Review.create!(
  user_id: 2,
  restaurant_id: 4,
  date: "May 1, 2016",
  rating: 4,
  rate_food: 4,
  rate_ambience: 4,
  rate_service: 4,
  rate_value: 4,
  body: "Hands down, this is the best restaurant I have eaten in through both my visits to Alameda. It was our last night in town and I remembered seeing something about this restaurant, so we made a reservation (highly recommended - it was packed on a Saturday evening). We were sat immediately. Within a few minutes, we were greeted by our server, Sterling. Very nice and very familiar with not only the food menu, but also the drinks. We started with a cup of their roasted cauliflower soup and a cup of the potato soup. Both were very good. For our entrees, I ordered the Jagerschnitzel, which is pork cutlets topped with a mushroom cream sauce. My wife ordered the sauerbraten, which is sliced beef topped with a wine-based gravy. Each of our dinners came with a salad. Needless to say, we cleaned our plates. The flavor was excellent. You could tell our food was served immediately after being placed on the plates. It was steaming hot. Speisekammer has a very large German beer selection, on draft and in bottles. The also have a large German wine selection as well as quite a list of specialty cocktails. There is parking on the street and they some parking on the side of the building. Be careful, though as the parking lot only has one entrance and then you have to back out. Maybe not a good idea if you been sampling their bar selections. There is also seating outside and on this occasion, it appeared a band was beginning to set up. Highly recommend,making a reservation. This is a very popular restaurant. I knew there had to be at least one good restaurant in Alameda. I just wish I would I found it earlier."
)

Review.create!(
  user_id: 1,
  restaurant_id: 6,
  date: "June 23, 2016",
  rating: 5,
  rate_food: 5,
  rate_ambience: 5,
  rate_service: 5,
  rate_value: 4,
  body: "We had a great time at Nascmarkt. We were not experienced with Austrian food, so we were looking forward to something new. For the appetizer, we had the Quark Spätzle. It was excellent, the spätzle was cooked just right, with a creamy sauce. We had three different entrees - pork belly, halibut, and goulash. I highly recommend the pork belly. And for dessert, apple strudel and the soufflé. What a wonderful ending to the meal. Our waiter was top-notch, friendly and attentive. Nascmarkt is on the pricier side but well worth it."
)

Review.create!(
  user_id: 2,
  restaurant_id: 6,
  date: "June 23, 2016",
  rating: 5,
  rate_food: 5,
  rate_ambience: 4,
  rate_service: 4,
  rate_value: 4,
  body: "John, our server paid attention bo my needs. as a visually challenged person, i liked John extra attention of telling me where he was placing items and when he was reaching over my shoulders. Very good ..."
)

Review.create!(
  user_id: 1,
  restaurant_id: 7,
  date: "July 3, 2016",
  rating: 4,
  rate_food: 4,
  rate_ambience: 4,
  rate_service: 5,
  rate_value: 4,
  body: "A good place to come for brunch. But dress warmly ladies. Because all the tables have hot plates the AC is set on very cool. I love the quality of the service above all. Meat is exquisite and the veggies are fresh but the bread for the fondue is sweet. It's a big no no for me."
)

Review.create!(
  user_id: 2,
  restaurant_id: 7,
  date: "June 26, 2016",
  rating: 5,
  rate_food: 5,
  rate_ambience: 4,
  rate_service: 5,
  rate_value: 5,
  body: "Our waiter, Zack, was kind, polite, and funny. He was helpful when we were choosing our entrees and gave us food tips to help us enjoy our meal.
"
)

Review.create!(
  user_id: 1,
  restaurant_id: 8,
  date: "June 25, 2016",
  rating: 2,
  rate_food: 3,
  rate_ambience: 3,
  rate_service: 2,
  rate_value: 2,
  body: "This was our first time to a fondue restaurant and the waiter spoke too quickly, threw too options at us and it gave us the perception that he was trying to add as many things onto our order as possible to increase the bill. Although it was slow the evening we were there, the drinks were delivered to our table mid-way through dinner. My husband ordered an IPA which was brought to him, not very cold and in a can. He did not pour even pour it into his glass. For the price of the meal, we expected the beers to at least be on tap, or they could have even poured it in his glass and delivered the glass to him. Just not as classy as we expected. This was a celebration for our daughter's 18th birthday. Her special treat was dropped off at her table. However, another customer with a birthday was given the whole production (birthday song, etc). We liked the food overall but won't go back."
)

Review.create!(
  user_id: 2,
  restaurant_id: 8,
  date: "April 24, 2016",
  rating: 5,
  rate_food: 5,
  rate_ambience: 5,
  rate_service: 5,
  rate_value: 4,
  body: "A friend and I decided to have a girls night here last weekend, and we loved it. I had an 8:30pm reservation for two, we got there closer to 8pm so we sat in the bar and had a drink while we waited for our table. The staff was very friendly and courteous. They got us to our table at about 8:50 (it was a Saturday night and crazy busy so we understood). The food was amazing, everything was delicious. Personally I feel it's a little pricey but worth it. Next time though I think I'll just do cheese and dessert fondues because the entrees while very good weren't my thing. The decor and ambiance is very calm and rustic- a very comfortable place to relax and have a glass of wine. The whole dining experience took an ample amount of time but that's expected anywhere worth going on a weekend night."
)

Review.create!(
  user_id: 1,
  restaurant_id: 9,
  date: "July 3, 2016",
  rating: 2,
  rate_food: 3,
  rate_ambience: 2,
  rate_service: 1,
  rate_value: 1,
  body: "The service was horrible and slow and they couldn't even get the order(s) correct. They didn't even know how to make an after dinner drink which was a cup of coffee with a Grand Mariner in a snifter. I got Frangelico in my coffee."
)

Review.create!(
  user_id: 2,
  restaurant_id: 9,
  date: "July 2, 2016",
  rating: 5,
  rate_food: 4,
  rate_ambience: 5,
  rate_service: 3,
  rate_value: 3,
  body: "I recommend going for the delicious cheese fondue,and the chocolate fondue only. The food portions are small considering the Cost,& i don't want to cook my own. Lobster salad contains imitation lobster,& wasn't a good salad."
)

Review.create!(
  user_id: 1,
  restaurant_id: 10,
  date: "June 28, 2016",
  rating: 5,
  rate_food: 5,
  rate_ambience: 4,
  rate_service: 5,
  rate_value: 4,
  body: "Wanted a special restaurant for our 35th anniversary date, and this definitely fit the bill! We had the 4-course dinner, and everything from salad to dessert was exceptional. Making all your decisions is definitely the hardest part, as there are many varieties of cheese and chocolate fondues to choose from, and the meat choices are staggering. We went pretty conventionally, with beef, chicken, shrimp, and scallops, but you can get a nice selection of game, as well. Cooking the food yourself is part of the fun. The only complaint I had was the low lighting-the shrimp was supposed to be done when it was pink, but it was impossible to see what color it was. Turned out delicious, at any rate! Both the cheese and chocolate fondues came with lots of items to dip, and the meats were accompanied by 6 dipping sauces. Yes, it's expensive, but you'll spend just as much at a fancy steakhouse, without the variety and novelty. And you are definitely full by the end of the meal! Out waiter was very attentive and explained all of the nuances of the menu and cooking styles very well. He gave us champagne on the house for our celebration, which added a lovely end to the meal. I'm already looking forward to going again!"
)

Review.create!(
  user_id: 2,
  restaurant_id: 10,
  date: "June 13, 2016",
  rating: 3,
  rate_food: 3,
  rate_ambience: 3,
  rate_service: 2,
  rate_value: 3,
  body: "After being seated in a dark room with no windows, we waited about 30 minutes before any food was brought to our table. There was also a very long wait between the cheese and protein service. Servers were nice but busy, the station had a number of large parties that were already in the midst of service when we were seated. Most tables had children, so it was fairly noisy. The food options offered a variety of choices. While expensive, the price seemed fair. I was disappointed after leaving the restaurant to find that my clothes had picked up the scent of cooking oil. I appreciate the novelty aspect of the restaurant, however, this visit was enough for us."
)

Review.create!(
  user_id: 1,
  restaurant_id: 11,
  date: "April 15, 2016",
  rating: 2,
  rate_food: 3,
  rate_ambience: 2,
  rate_service: 1,
  rate_value: 1,
  body: 'Poor service ruined this meal. We asked for the cheese fondue first and then the salad. But the salads came first and we were told "that\'s how the kitchen fixed it" when the salad arrived it had bell peppers on it, something not mentioned on the menu. My friend is allergic to bell peppers. Rather then offering to redo the salad, the waitress said "guess you don\'t want it" and took it away. Was very surprised when the plate of meat came surrounded by bell peppers. Sullen service throughout. No offer of dessert or coffee. Will not visit here again'
)

Review.create!(
  user_id: 2,
  restaurant_id: 11,
  date: "May 30, 2016",
  rating: 5,
  rate_food: 5,
  rate_ambience: 5,
  rate_service: 5,
  rate_value: 5,
  body: "We drive in from the east bay to get our fondue fix here. We order 'the original' fondue. Very authentic. Chocolate fondue is amazing with all the goodies that come with it. Great service and ambiance."
)

Review.create!(
  user_id: 1,
  restaurant_id: 12,
  date: "June 12, 2016",
  rating: 4,
  rate_food: 5,
  rate_ambience: 4,
  rate_service: 4,
  rate_value: 3,
  body: "This is an eccentric little restaurant with great food. You order food and drinks at the bar, take your drink with you, and your food is delivered to your table. While you wait, you gaze around at all the bric-a-brac and tchotchkes. The player pianos and juke boxes take turns playing tunes, but the music isn't constant. When the piano or box nearby is playing, it can be a little loud, but the songs are short and fun. Our food was perfectly prepared -- salad with prosciutto, shrimp scampi, and salmon over mashed potatoes and fennel. Crispy prosciutto. Tender shrimp. Tender, moist salmon. Overall, we were delighted with our meal. We'll be back."
)

Review.create!(
  user_id: 2,
  restaurant_id: 12,
  date: "June 12, 2016",
  rating: 5,
  rate_food: 5,
  rate_ambience: 5,
  rate_service: 5,
  rate_value: 5,
  body: "Oh what a treat! Imagine you've collected too many things to reasonably call it a hobby anymore. If it turns out those items are self-playing instruments, then open a restaurant and let everyone else share your joy. Add to that the food is fantastic. My rib-eye was actually medium rare and perfectly seasoned. The beans were fresh and crisp. The mashed potatoes were full of flavor. But make sure you save room for dessert! Whether it's a banana split brulee (yes, with carmelized sugar across the banana) or an old fashioned phosphate from the soda fountain, you won't be disappointed. My husband's Fester's phosphate was a joy with fresh blackberries. Better yet, they easily accommodated our large post-ballet recital group and the children were charmed with the player pianos and the adults were fascinated with the player violin."
)

Review.create!(
  user_id: 1,
  restaurant_id: 13,
  date: "July 5, 2016",
  rating: 5,
  rate_food: 5,
  rate_ambience: 5,
  rate_service: 5,
  rate_value: 4,
  body: "Warm inviting neighborhood restaurant with a good variety of different dishes representing Swiss, German and Italian cuisine. It is a small restaurant so if it was busy it would feel crowded. I went during the week and it was fairly empty. The pork tenderloin was moist and tender. The house salad was interesting. The spumoni was excellent. The beer menu was small but the beers were not your run of the mill German imports. We had a delightful evening and will definitely return.
"
)

Review.create!(
  user_id: 2,
  restaurant_id: 13,
  date: "June 12, 2016",
  rating: 1,
  rate_food: 5,
  rate_ambience: 5,
  rate_service: 4,
  rate_value: 0,
  body: "Fantastic food and friendly service. Great standards for a local Swiss restaurant. Keep it secret!"
)

Review.create!(
  user_id: 1,
  restaurant_id: 37,
  date: "November 20, 2016",
  rating: 5,
  rate_food: 5,
  rate_ambience: 4,
  rate_service: 5,
  rate_value: 5,
  body: "Really enjoyable, great service, very tasty food w good presentation. Some reviews criticized the cucumber salad, it was great as was all the food. Out entire table would go back and have dinner again."
)

Review.create!(
  user_id: 2,
  restaurant_id: 37,
  date: "November 20, 2016",
  rating: 5,
  rate_food: 5,
  rate_ambience: 2,
  rate_service: 5,
  rate_value: 5,
  body: "Went to this place by chance. Great find! Food and drinks were great, service was great. We will definitely be back!"
)

Reservation.create!(
  guest_id: 1,
  restaurant_id: 1,
  date: "June 29, 2017",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 2,
  restaurant_id: 1,
  date: "June 19, 2016",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 1,
  restaurant_id: 2,
  date: "July 1, 2016",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 2,
  restaurant_id: 2,
  date: "June 10, 2017",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 1,
  restaurant_id: 3,
  date: "June 26, 2017",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 2,
  restaurant_id: 3,
  date: "June 19, 2016",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 1,
  restaurant_id: 4,
  date: "July 3, 2016",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 2,
  restaurant_id: 4,
  date: "May 1, 2017",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 1,
  restaurant_id: 6,
  date: "June 23, 2017",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 2,
  restaurant_id: 6,
  date: "June 23, 2016",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 1,
  restaurant_id: 7,
  date: "July 3, 2016",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 2,
  restaurant_id: 7,
  date: "June 26, 2017",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 1,
  restaurant_id: 8,
  date: "June 25, 2017",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 2,
  restaurant_id: 8,
  date: "April 24, 2016",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 1,
  restaurant_id: 9,
  date: "July 3, 2016",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 2,
  restaurant_id: 9,
  date: "July 2, 2017",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 1,
  restaurant_id: 10,
  date: "June 28, 2017",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 2,
  restaurant_id: 10,
  date: "June 13, 2016",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 1,
  restaurant_id: 11,
  date: "April 15, 2016",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 2,
  restaurant_id: 11,
  date: "May 30, 2017",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 1,
  restaurant_id: 12,
  date: "June 12, 2017",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 2,
  restaurant_id: 12,
  date: "June 12, 2016",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 1,
  restaurant_id: 13,
  date: "July 5, 2016",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 2,
  restaurant_id: 13,
  date: "June 12, 2017",
  guest_count: 2,
  requests: "",
  time: 68400
)

Reservation.create!(
  guest_id: 1,
  restaurant_id: 37,
  date: "November 12, 2016",
  guest_count: 1,
  requests: "",
  time: 68400
)

Favorite.create!(
  user_id: 1,
  restaurant_id: 1
)
