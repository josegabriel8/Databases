SELECT menu.name, menu.main, food.name, food.unit, food.weight
FROM food, menu
WHERE food.menu_name = menu.name;


SELECT menu.name, menu.main, food.name, food.unit, food.weight
FROM food JOIN menu ON food.menu_name = menu.name;

SELECT *
FROM (SELECT name AS menu_name
FROM  menu) m NATURAL JOIN food;


SELECT menu_name, SUM(price) AS sum
FROM Food
GROUP BY menu_name;
#HAVING MIN(price) <= 5;

#CREATE VIEW klk2 (name, unit, weight, label, price)  AS 
SELECT name, unit, weight, label, price
FROM Food
WHERE name LIKE '%pistachio%'
AND price = (SELECT MIN(price)
FROM Food
WHERE name LIKE '%pistachio%');


(SELECT B.basket_name, MIN(F.price) AS price, 'MIN' AS value
FROM food F JOIN BasketCombines B ON (
     F.name = B.food_name
     AND F.weight = B.food_weight
     AND F.unit = B.food_unit)
GROUP BY B.basket_name)   
UNION
(SELECT B.basket_name, MAX(F.price) AS price, 'MAX' AS value
FROM food F JOIN BasketCombines B ON (
     F.name = B.food_name
     AND F.weight = B.food_weight
     AND F.unit = B.food_unit)
GROUP BY B.basket_name)
ORDER BY basket_name, price;



SELECT f1.name, f1.unit, f1.weight AS w1, f2.weight AS w2
FROM Food f1, Food F2
WHERE f1.name = f2.name
AND f1.unit = f2.unit
AND f1.weight > f2.weight;

(SELECT name, weight, unit, 'Sicily' AS type
FROM food JOIN sheet ON sheet_ID = ID
WHERE region_name = 'Sicilia')
UNION
(SELECT name, weight, unit, 'Big Container' AS type
FROM food
WHERE (menu_name, weight) IN (SELECT menu_name, MAX(weight)
						        FROM food
                                WHERE unit = 'g'
                                GROUP BY menu_name))
ORDER BY name, weight;