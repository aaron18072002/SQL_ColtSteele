USE pet_shop;

SELECT database();

CREATE TABLE cats (
	Name VARCHAR(30),
    Age INT
);

INSERT INTO cats(Name,Age)
VALUES ('Blue',7);

INSERT INTO cats(Name,Age)
VALUES ('Jenkins',6);

SELECT * FROM cats;

INSERT INTO cats(Name,Age)
VALUES ('Charlie',10),
	   ('Sadie', 3),
       ('Lazy Dear', 1);

CREATE TABLE people (
	first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
);

INSERT INTO people(first_name,last_name,age)
VALUES ('Bob','Belcher',32);

INSERT INTO people(first_name,last_name,age)
VALUES ('Linda','Belcher',45),
	   ('Philip','Frond',38),
       ('Calvin','Fischoeder',70);
       
SELECT * FROM people;

DROP TABLE people;

DESC cats;

CREATE TABLE cats2 (
	Name VARCHAR(20) NOT NULL,
    Age INT NOT NULL
);

DESC cats2;

INSERT INTO cats2(Name,Age) 
VALUES ('Tom');

USE pet_shop;

CREATE TABLE cat3 (
	Name VARCHAR(30) NOT NULL DEFAULT 'unnamed',
    Age INT NOT NULL DEFAULT -1
);

INSERT INTO cat3()
VALUES ();

SELECT * FROM cat3;

INSERT INTO cat3(Name) 
VALUES (NULL,12);

DESC cat3;

CREATE TABLE unique_cats (
	cat_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL DEFAULT 'unnamed',
    age INT
);

DESC unique_cats;

INSERT INTO unique_cats(cat_id,name,age)
VALUES (1,'Tom',10);

SELECT * FROM unique_cats;
DROP TABLE unique_cats;

CREATE TABLE unique_cats (
	cat_id INT auto_increment PRIMARY KEY,
    name VARCHAR(30) NOT NULL DEFAULT 'unnamed',
    age INT
);

DESC unique_cats;

SELECT * FROM unique_cats;

INSERT INTO unique_cats(cat_id,name,age)
VALUES (4,'Tom',12);

INSERT INTO unique_cats(name,age)
VALUES ('Tom',12);

CREATE TABLE Employees (
	id INT auto_increment PRIMARY KEY,
    last_name VARCHAR(30) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    middle_name VARCHAR(30),
    age INT NOT NULL,
    current_status VARCHAR(20) NOT NULL DEFAULT 'employed'
);

DESC Employees;
SELECT * FROM Employees;

INSERT INTO Employees(last_name,first_name,middle_name,age,current_status)
VALUES ('peter','kyle','walker',12,'left');

DROP TABLE cat3;
DROP TABLE cats;
DROP TABLE cats2;
DROP TABLE Employees;
DROP TABLE dogs;
DROP TABLE unique_cats;
DROP database pet_shop;
