#which products has been most selected?
SELECT food_name, food_weight, food_unit, count(*) AS nr
FROM selection
GROUP BY food_name, food_weight, food_unit
HAVING nr >= ALL (SELECT count(*) AS nr
                  FROM selection
				  GROUP BY food_name, food_weight, food_unit) ;
#ORDER BY nr desc

SELECT name, weight, unit, COUNT(food_name) AS selected 
FROM food LEFT OUTER JOIN 
(SELECT food_name, food_unit, food_weight
FROM selection
WHERE  month(timestamp) >= 1
AND month(timestamp) <=6 ) S
ON (food.name = S.food_name
AND weight = S.food_weight
AND unit = S.food_unit)
WHERE menu_name = "Pasta"
GROUP BY name, weight, unit;

SELECT *
FROM session LEFT OUTER JOIN choices 
ON (session.ID = choices.ID)
WHERE year(date) = 2023
GROUP BY month(date), hour(hour)
ORDER BY month(date), hour(hour)
