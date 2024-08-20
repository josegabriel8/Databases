###########################################################
# DSN online_market
###########################################################
# Question 1
###########################################################
library(RODBC);
c <- odbcConnect("online_market");
ds <- sqlQuery(c, "(SELECT menu.name AS menu, COUNT(choices.name) AS nr, 'Short' AS time
                      FROM menu LEFT OUTER JOIN choices ON menu.name = choices.name
                     WHERE menu.main = 'Preserved Foods'
                       AND time < 100
                  GROUP BY menu.name)
                     UNION
                   (SELECT menu.name AS menu, COUNT(choices.name) AS nr, 'Long' AS time
                      FROM menu LEFT OUTER JOIN choices ON menu.name = choices.name
                     WHERE menu.main = 'Preserved Foods'
                       AND time >= 100
                  GROUP BY menu.name)
                  ORDER BY menu, time DESC;");
View(ds);
odbcClose(c);
#########################################
# Display
#########################################
library(ggplot2);
ggplot(data=ds, aes(x=menu, y=nr, fill=time)) +
  geom_bar(stat="identity", position=position_dodge()) +
  theme(axis.text.x = element_text(angle = 45));

###########################################################
# Question 2
###########################################################
library(RODBC);
c <- odbcConnect("online_market");
ds <- sqlQuery(c, "(SELECT CONCAT(name, ' ', ROUND(weight,0), '-', unit) AS food, COUNT(food_name) AS selection, 'FAIL' AS appreciate
                      FROM food LEFT JOIN selection ON (
                           food.name = selection.food_name
                           AND food.weight = selection.food_weight
                           AND food.unit = selection.food_unit)
                      WHERE food.menu_name = 'Sauce-Mashed'
                     GROUP BY name, weight, unit
                     HAVING COUNT(food_name) = 0)
                     UNION
                     (SELECT CONCAT(name, ' ', ROUND(weight,0), '-', unit) AS food, COUNT(food_name) AS selection, 'HIT' AS appreciate
                     FROM food LEFT JOIN selection ON (
                          food.name = selection.food_name
                          AND food.weight = selection.food_weight
                          AND food.unit = selection.food_unit)
                    WHERE food.menu_name = 'Sauce-Mashed'
                  GROUP BY name, weight, unit
                  HAVING COUNT(food_name) >= 3)
                  ORDER BY food;");
View(ds);
odbcClose(c);
########################################
# Analyses HIT and FAIL
########################################

d <- data.frame(ds$food, ds$appreciate);
t <- table(d);
print(t);

#                                                           ds.appreciate
#ds.food                                                     FAIL HIT
#  Condimento per Pasta Con Sarde 180-g                         0   1
#  Passata di pomodoro fiaschetto Oro del Parco 500-g           1   0
#  Pesto & Bruschetta Ibleo con Finicchietto Selvatico 190-g    0   1
#  Salsa Pomodori Datterini 330-g                               1   0
#  Sugo al basilico 314-ml                                      1   0
#  Sugo Alici con Finocchietto 290-g                            1   0
#  Sugo alla amatriciana 200-g                                  0   1
#  Sugo alla Pescatora 220-g                                    0   1
#  Sugo alle melanzane 190-g                                    0   1
#  Sugo con Salsiccia di Maiale Nero Siciliano 290-g            1   0
#  Sugo pronto 'nduja di Spilinga 270-g                         0   1
#  Sugo pronto al peperoncino calabrese 270-g                   1   0
#  Sugo pronto cipolla rossa di Tropea IGP 500-g                1   0

###########################################################
# Question 3
###########################################################
library(RODBC);
c <- odbcConnect("online_market");
ds <- sqlQuery(c, "SELECT session.ID AS basket, SUM(quantity*price) AS total, '€' AS currency
                    FROM food, selection, session
                    WHERE food.name = selection.food_name
                     AND food.weight = selection.food_weight
                     AND food.unit = selection.food_unit
                     AND selection.ID = session.ID
                GROUP BY session.ID
                 HAVING SUM(quantity*price) >= 50
                 ORDER BY session.ID;");
View(ds);
odbcClose(c);
############################
# Display data
############################
library(ggplot2);
ggplot(data=ds, aes(x=basket, y=total)) + geom_bar(stat="identity", color="blue", fill="white");

#################################################
# Question 4
#################################################
library(RODBC);
c <- odbcConnect("online_market");
ds <- sqlQuery(c, "SELECT CONCAT(year(session.date),'-',month(session.date)) AS time, COUNT(food_name) AS nr
                     FROM food JOIN selection ON 
                         (food.name = selection.food_name
                          AND food.weight = selection.food_weight
                          AND food.unit = selection.food_unit) 
                         JOIN session ON (selection.ID = session.ID)
                     GROUP BY CONCAT(year(session.date),'-',month(session.date));");
View(ds);
odbcClose(c);
############################
# Display data
############################

library(ggplot2);
ggplot(data=ds, aes(x=time, y=nr, group=1)) +
  geom_line(color="red")+
  geom_point();

###########################################################
