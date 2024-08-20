CREATE DATABASE online_market;
USE online_market;

#GRANT ALL ON online_market TO ''@localhost;

###################################################
# menu
###################################################

CREATE TABLE menu(
    name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(500),
    main VARCHAR(30) REFERENCES name
);

#GRANT ALL ON menu TO ''@localhost;

INSERT INTO menu VALUES('Preserved Foods',NULL, NULL);
INSERT INTO menu VALUES('Olives and Capers',NULL, 'Preserved Foods');
INSERT INTO menu VALUES('Sauces and Pesto',NULL, 'Preserved Foods');
INSERT INTO menu VALUES('Cream and Pate',NULL, 'Preserved Foods');
INSERT INTO menu VALUES('Sweet Products',NULL, NULL);
INSERT INTO menu VALUES('Marmelade and Jam',NULL,'Sweet Products');
INSERT INTO menu VALUES('Spreadables Creams',NULL,'Sweet Products');
INSERT INTO menu VALUES('Condiments',NULL, NULL);
INSERT INTO menu VALUES('Olive Oil',NULL, 'Condiments');
INSERT INTO menu VALUES('Vinegar',NULL, 'Condiments');
INSERT INTO menu VALUES('Cereals and Legumens',NULL, NULL);
INSERT INTO menu VALUES('Legumes',NULL, 'Cereals and Legumens');

###################################################
# food
###################################################

CREATE TABLE food(
    name VARCHAR(50),
    unit VARCHAR(10),
    weight NUMERIC(5,2),
    label VARCHAR(500),
    price NUMERIC(5,2),
	status Boolean,
    menu_name  VARCHAR(30),
    PRIMARY KEY(name, unit, weight),
    FOREIGN KEY (menu_name) REFERENCES menu(name)
);

#GRANT ALL ON food TO ''@localhost;

INSERT INTO food VALUES('Capers in Sea Salt', 'g', 500, 'La Nicchia', 17.50, True, 'Olives and Capers');
INSERT INTO food VALUES('Capers in Sea Salt', 'g', 200, 'La Nicchia', 8.98, True, 'Olives and Capers');
INSERT INTO food VALUES('Pistachio Pesto', 'g', 190, 'Scyavuru', 8.9, False, 'Sauces and Pesto');
INSERT INTO food VALUES('Traditional Bolognese Ragù', 'g', 180, 'La Dispensa di Amerigo ', 6.9, True, 'Sauces and Pesto');
INSERT INTO food VALUES('Organic Tomato and Basil Sauce', 'g', 340, 'Buonamici', 2.4, False, 'Sauces and Pesto');
INSERT INTO food VALUES('Historical Bolognese Ragù', 'g', 200, 'La Dispensa di Amerigo', 6.9, True, 'Sauces and Pesto');
INSERT INTO food VALUES('Roast Meat Ragù', 'g', 190, 'La Granda Pronta', 5.9, True, 'Sauces and Pesto');
INSERT INTO food VALUES('Black Olive Paste', 'g', 80, 'Roi', 2.70, True, 'Cream and Pate');
INSERT INTO food VALUES('strawberry extra marmelade', 'g', 340, 'Erberossi', 3.6, True, 'Marmelade and Jam');
INSERT INTO food VALUES('Pistachio Cream', 'g', 200, 'Scyavuru', 7.40, True, 'Spreadables Creams');
INSERT INTO food VALUES('Cocoa & Hazelnut Cream', 'g', 200, 'Golosi di Salute', 6.90, True, 'Spreadables Creams');
INSERT INTO food VALUES('Gianduja Cream', 'g', 380, 'Maison Nocciola Piemonte', 11.90, True, 'Spreadables Creams');
INSERT INTO food VALUES('Pistachio Cream', 'g', 150, 'Babbi', 5.90, True, 'Spreadables Creams');
INSERT INTO food VALUES('Organic Extra Virgin Olive Oil', 'ml', 500, 'Cufrol', 8.90, True, 'Olive Oil');
INSERT INTO food VALUES('Primo Organic Extra Virgin Olive Oil', 'ml', 500, 'Frantoi Cutrera', 14.90, True, 'Olive Oil');
INSERT INTO food VALUES('Extra Virgin Nocellara Olive Oil', 'ml', 750, 'Olis Geraci', 14.80, True, 'Olive Oil');
INSERT INTO food VALUES('Balsamic Vinegar Glaze', 'ml', 250, 'Acetomodena', 7.80, True, 'Vinegar');
INSERT INTO food VALUES('Aceto Modena 2 medaglie', 'ml', 250, 'Giusti', 13.60, True, 'Vinegar');
INSERT INTO food VALUES('Colfiorito lentils', 'kg', 0.5, 'La Valletta', 4.60, True, 'Legumes');
INSERT INTO food VALUES('Borlotti Beans', 'g', 400, 'Alce Nero', 4.40, True, 'Legumes');

###################################################
# gift basket
###################################################

CREATE TABLE giftBasket(
    name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(500)
);

#GRANT ALL ON giftBasket TO ''@localhost;

INSERT INTO giftBasket VALUES('Gift hamper', 'for your daily trip');
INSERT INTO giftBasket VALUES('Delight taste', 'for elegant moments');
INSERT INTO giftBasket VALUES('Savory basket', 'tradition and genuineness');

###################################################
# basket comibines
###################################################

CREATE TABLE basketCombines(
    basket_name VARCHAR(30),
    food_name VARCHAR(50),
    food_unit VARCHAR(10),
    food_weight NUMERIC(5,2),
    FOREIGN KEY (basket_name) REFERENCES giftBasket(name),
    FOREIGN KEY (food_name, food_unit, food_weight) REFERENCES food(name, unit, weight)
);

#GRANT ALL ON basketCombines TO ''@localhost;

INSERT INTO basketCombines VALUES('Delight taste', 'Pistachio Cream', 'g', 200);
INSERT INTO basketCombines VALUES('Delight taste', 'Colfiorito lentils', 'kg', 0.5);
INSERT INTO basketCombines VALUES('Delight taste', 'Capers in Sea Salt', 'g', 200);
INSERT INTO basketCombines VALUES('Delight taste', 'Organic Extra Virgin Olive Oil', 'ml', 500);
INSERT INTO basketCombines VALUES('Savory basket', 'Pistachio Cream', 'g', 150);
INSERT INTO basketCombines VALUES('Savory basket', 'Colfiorito lentils', 'kg', 0.5);
INSERT INTO basketCombines VALUES('Savory basket', 'Aceto Modena 2 medaglie', 'ml', 250);
INSERT INTO basketCombines VALUES('Savory basket', 'Capers in Sea Salt', 'g', 500);
INSERT INTO basketCombines VALUES('Savory basket', 'Organic Extra Virgin Olive Oil', 'ml', 500);
INSERT INTO basketCombines VALUES('Savory basket', 'Black Olive Paste', 'g', 80);
INSERT INTO basketCombines VALUES('Savory basket', 'Historical Bolognese Ragù', 'g', 200);