SELECT *
FROM basketcombines, food
WHERE food_name = name
AND food_unit = unit
AND food_weight = weight
AND basket_name = 'Savory basket';

SELECT name, unit, weight, label, price
FROM Food
WHERE name = 'Pistachio Cream';

SELECT a.name, a.main
FROM Menu a, Menu b
WHERE a.name = b.main;

SELECT name, unit, weight, price
FROM Food
WHERE price = (SELECT MAX(price)
FROM Food);

SELECT new.name, new.unit, new.weight
FROM (SELECT *
FROM Food
WHERE status = false) new;

SELECT *
FROM Food
WHERE weight >ANY (SELECT weight
FROM Food b
WHERE);