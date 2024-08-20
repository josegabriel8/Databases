##############################
# SCRAPING and SQL
##############################

CREATE DATABASE kids_cloths;
USE kids_cloths;

CREATE TABLE Cloths(
   ID INTEGER PRIMARY KEY,
   brand VARCHAR(50),
   microcategory VARCHAR(50),
   price NUMERIC(6,2),
   offPerc NUMERIC(4,2),
   newPrice NUMERIC(6,2)
);
   
#######
# Ex. 1
#######
CREATE TABLE Course(
    name VARCHAR(20) PRIMARY KEY,
    courseType VARCHAR(10),
    difficulty VARCHAR(10) DEFAULT 'N/A',
    preparationTime NUMERIC(4,0) CHECK (preparationTime > 0)
);

GRANT ALL ON Course TO ''@localhost;

#######

INSERT INTO Course(name, courseType, difficulty, preparationTime) 
VALUES ('Lasagne', 'Pasta','Medium',90);
INSERT INTO Course(name, courseType)  
VALUES ('Tiramisù', 'Dessert');
INSERT INTO Course(name, courseType, difficulty, preparationTime) 
VALUES ('Lasagne', 'Pasta','Low', 120);
INSERT INTO Course 
VALUES ('Cotoletta', 'Meat', 'Low', 0); 
INSERT INTO Course 
VALUES ('Cotoletta alla Milanese', 'Meat', NULL, NULL);
INSERT INTO Course 
VALUES ('Cotoletta alla Milan', 'Meat', NULL, 35);
INSERT INTO Course 
VALUES ('Risotto con funghi', 100);
INSERT INTO Course 
VALUES ('Risotto con funghi', NULL, NULL, 100);

#######

UPDATE Course
      SET difficulty = 'Low'
WHERE name = 'Lasagne';
UPDATE Course
      SET name ='Cotoletta Mil.'
WHERE name = 'Cotoletta alla Milan';

#######
# Ex. 2
#######

CREATE TABLE Object(
   name VARCHAR(20) PRIMARY KEY,
   description VARCHAR(100),
   recyclable BOOLEAN
);

#######

CREATE TABLE Composition(
   object VARCHAR(20),
   material VARCHAR(30),
   percentage NUMERIC(5,2),
   FOREIGN KEY (object) REFERENCES Object(name)
);

#######
# Ex. 3
#######

CREATE TABLE Offer(
   provider VARCHAR(10) PRIMARY KEY,
   country CHAR(2),
   offer_name VARCHAR(10),
   minutes NUMERIC(6,2),
   sms NUMERIC(5,2),
   price NUMERIC(4,1)
);

#######

CREATE TABLE Offer(
   provider VARCHAR(10),
   country CHAR(2),
   offer_name VARCHAR(30),
   minutes NUMERIC(6,2),
   sms NUMERIC(6,2),
   internet NUMERIC(4,0),
   int_unit CHAR(4),
   price NUMERIC(4,2),
   frequency VARCHAR(20),
   PRIMARY KEY (provider, country)
);

#######

ALTER TABLE Offer
ADD internet NUMERIC(4,0);

ALTER TABLE Offer
ADD int_unit CHAR(4);

ALTER TABLE Offer
ADD frequency VARCHAR(20);

ALTER TABLE Offer
DROP PRIMARY KEY;
 
ALTER TABLE Offer
ADD PRIMARY KEY (provider, country);

#######
# Ex. 4
#######

CREATE TABLE Train(
    num INTEGER PRIMARY KEY,
    type VARCHAR(30),
    maxSpeed NUMERIC(6,3)
);

CREATE TABLE Station(
    name VARCHAR(30) PRIMARY KEY,
    place VARCHAR(30),
    num_platform INTEGER
);

#######

CREATE TABLE Train_stop(
    num INTEGER,
    name VARCHAR(30),
    FOREIGN KEY (num) REFERENCES Train(num),
    FOREIGN KEY (name) REFERENCES Station(name)
);

INSERT INTO Train VALUES(2064, 'RV', 180.5);
INSERT INTO Station VALUES('Lambrate', 'Milano', 12);
INSERT INTO Train_stop VALUES(2064, 'Lambrate');


#######
# Ex. 5
#######

CREATE TABLE Climate(
    source VARCHAR(100),
    time INTEGER,
    tDev NUMERIC(4,2),
    unit VARCHAR(15),
    PRIMARY KEY(source, time)
);

INSERT INTO Climate
VALUES ('Met Office Hadley Centre and Climatic Research Unit', 2011, 1.57, 'Degree Celsius');
INSERT INTO Climate
VALUES ('Met Office Hadley Centre and Climatic Research Unit', 2015, 1.89, 'Degree Celsius');


   