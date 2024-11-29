CREATE database pet_shop;
USE pet_shop;

CREATE TABLE cats (
	cat_id INT auto_increment PRIMARY KEY,
    name VARCHAR(30) NOT NULL DEFAULT 'unnamed',
    breed VARCHAR(30),
    age INT
);

INSERT INTO cats(name,breed,age)
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
SELECT * FROM cats;
SELECT name,breed FROM cats;

SELECT * FROM cats
WHERE age >= 4;

SELECT * FROM cats
WHERE cat_id = age;

SELECT name AS cat_name
FROM cats AS C
WHERE C.age > 4;

UPDATE cats
SET breed = 'Short hair',
	age = 15
WHERE cat_id = 5;

UPDATE cats
SET name = 'Jack'
WHERE cat_id = 7;

UPDATE cats
SET breed = 'Short hair',
	age = 12
WHERE breed = 'Maine Coon';

DELETE FROM cats
WHERE cat_id = age;

