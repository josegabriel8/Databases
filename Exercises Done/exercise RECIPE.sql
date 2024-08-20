SELECT name, courseType
FROM Course;

SELECT name AS Vegetable
FROM Ingredient
WHERE category = 'spice';

SELECT CONCAT('COURSE: ', name, ' (', UCASE(courseType), ')')
FROM Course;


SELECT name, courseType, difficulty
FROM Course
WHERE courseType != 'dessert';


SELECT name, courseType, difficulty, preparationTime
FROM Course
WHERE courseType != 'dessert' AND preparationTime <= 50 ;

SELECT *
FROM Course
WHERE preparationTime >= 50 AND preparationTime <= 100 ;


SELECT *
FROM Ingredient
WHERE category <> 'vegetable' AND category <> 'spice';

SELECT name, category, courseName
FROM Ingredient, Recipe;

SELECT ingredientName, courseType, courseName, CONCAT(quantity, 'Cl') AS qty
FROM Recipe, Course
WHERE Recipe.courseName = Course.name
AND ingredientName= 'Olive Oil';

SELECT Ingredient.category, Ingredient.name, Recipe.courseName
FROM Recipe, Ingredient
WHERE Recipe.ingredientName = Ingredient.name
AND (Ingredient.category = 'fruit' OR Ingredient.category = 'vegetable');

SELECT*
FROM Recipe
WHERE (IngredientName = 'White Sugar' AND quantity <=200)
OR (IngredientName = 'Mascarpone' AND quantity <= 400);

SELECT R1.courseName, R1.ingredientName, R2.courseName
FROM Recipe R1, Recipe R2
WHERE R1.ingredientName = R2.ingredientName
AND R1.courseName <> R2.courseName;


SELECT difficulty, COUNT(*)  AS cantidad,
MIN(preparationTime) AS min_time, MAX(preparationTime) AS max_time,
AVG(preparationTime)
FROM Course
GROUP BY difficulty;