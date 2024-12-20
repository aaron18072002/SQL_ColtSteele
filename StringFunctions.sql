CREATE DATABASE books_shop;
USE books_shop;

CREATE TABLE books (
	book_id INT auto_increment PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author_fname VARCHAR(30) NOT NULL,
    author_lname VARCHAR(30) NOT NULL,
    released_year INT,
    stock_quantity INT NOT NULL DEFAULT 0,
    pages INT
);

DROP TABLE books;

INSERT INTO books(title,author_fname,author_lname,released_year,stock_quantity,pages)
VALUES ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

SELECT * FROM books;

SELECT CONCAT(author_fname,' ',author_lname) AS author_name
FROM books;

SELECT SUBSTRING(title,1,5) AS short_title
FROM books;

SELECT CONCAT(SUBSTRING(title,1,10),'...')
FROM books;

SELECT REPLACE(title, 'e ', '3') FROM books;

USE books_shop;
DROP TABLE books;
DROP database books_shop;
