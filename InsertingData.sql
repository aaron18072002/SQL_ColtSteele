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
