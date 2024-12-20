CREATE DATABASE shirts_db;
USE shirts_db;

CREATE TABLE shirts (
	shirt_id INT auto_increment PRIMARY KEY,
    article VARCHAR(30) NOT NULL,
    color VARCHAR(30) NOT NULL,
    shirt_size CHAR(1),
    last_worn INT
);

INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES ('t-shirt', 'white', 'S', 10),
	   ('t-shirt', 'green', 'S', 200),
	   ('polo shirt', 'black', 'M', 10),
	   ('tank top', 'blue', 'S', 50),
	   ('t-shirt', 'pink', 'S', 0),
	   ('polo shirt', 'red', 'M', 5),
	   ('tank top', 'white', 'S', 200),
	   ('tank top', 'blue', 'M', 15);
       
INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES ('polo shirt','purple','M',50);

SELECT article, color
FROM shirts;

SELECT article,color,shirt_size,last_worn
FROM shirts AS S
WHERE S.shirt_size = 'M';

UPDATE shirts
SET shirt_size = 'L'
WHERE article = 'polo shirt';

UPDATE shirts
SET last_worn = 0
WHERE last_worn = 15;

DELETE FROM shirts
WHERE last_worn >= 200;

DROP table shirts;
DROP DATABASE shirts_db;