SHOW DATABASES;

CREATE DATABASE abc;
DROP DATABASE abc;

SELECT database();

CREATE DATABASE Instagram;
CREATE TABLE Tweets (
	UserName VARCHAR(15),
    Content VARCHAR(140),
    Favorites INT
);

CREATE DATABASE pet_shop;
USE pet_shop;

CREATE TABLE dogs (
	Name VARCHAR(15),
    Breed VARCHAR(50),
    Age INT
);

CREATE TABLE cats (
	Name VARCHAR(15),
    Breed VARCHAR(50)
);

DROP TABLE cats;

SHOW tables;

CREATE TABLE pastries (
	Name VARCHAR(50),
    Quantity INT
);

DROP TABLE pastries;