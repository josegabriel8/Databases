
(SELECT basket_name, MIN(F.price) AS price, 'MIN' AS value
FROM food F JOIN BasketCombines B ON (
     F.name = B.food_name
     AND F.weight = B.food_weight
     AND F.unit = B.food_unit)
GROUP BY B.basket_name)   
UNION
(SELECT basket_name, MAX(F.price) AS price, 'MAX' AS value
FROM food F JOIN BasketCombines B ON (
     F.name = B.food_name
     AND F.weight = B.food_weight
     AND F.unit = B.food_unit)
GROUP BY B.basket_name)
ORDER BY basket_name, price;


