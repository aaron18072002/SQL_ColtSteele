CREATE database cart;
USE cart;

CREATE TABLE customers (
	id INT auto_increment PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(30)
);

CREATE TABLE orders (
	id INT auto_increment PRIMARY KEY,
    order_date DATE,
    amount decimal(8,2),
    customer_id INT ,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);

DROP TABLE orders;

CREATE TABLE orders (
	id INT auto_increment PRIMARY KEY,
    order_date DATE,
    amount decimal(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) 
		REFERENCES customers(id)
        ON DELETE CASCADE
);

INSERT INTO customers(first_name,last_name,email)
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders(order_date, amount,customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);

SELECT *  FROM customers;

SELECT * 
FROM orders AS O
WHERE customer_id = (
	SELECT id 
    FROM customers AS C 
    WHERE C.last_name = 'George'
);

SELECT first_name,last_name,O.id AS order_id,amount
FROM customers AS C
LEFT JOIN orders AS O
ON C.id = O.customer_id;

SELECT C.first_name,C.last_name, SUM(O.amount) AS total_amounts
FROM customers AS C
LEFT JOIN orders AS O
ON C.id = O.customer_id
GROUP BY C.last_name,C.first_name
ORDER BY total_amounts DESC;

CREATE TABLE students (
	student_id INT auto_increment PRIMARY KEY,
    first_name VARCHAR(30)
);

CREATE TABLE papers (
	paper_id INT auto_increment PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    grade INT,
    student_id INT,
    FOREIGN KEY(student_id) 
		REFERENCES students(student_id)
        ON DELETE CASCADE
);

DROP TABLE papers;

INSERT INTO students(first_name) 
VALUES ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers(student_id,title,grade)
VALUES (1, 'My First Book Report', 60),
	(1, 'My Second Book Report', 75),
	(2, 'Russian Lit Through The Ages', 94),
	(2, 'De Montaigne and The Art of The Essay', 98),
	(4, 'Borges and Magical Realism', 89);
    
SELECT S.first_name, P.title, P.grade
FROM students AS S
LEFT JOIN papers AS P
ON S.student_id = P.student_id
ORDER BY P.grade DESC;

SELECT S.first_name, 
	   IFNULL(P.title,'MISSING') AS title, 
       IFNULL(P.grade,0) AS grade
FROM students AS S
LEFT JOIN papers AS P
ON S.student_id = P.student_id
ORDER BY grade DESC;

SELECT S.first_name, 
	   IFNULL(AVG(P.grade),0) AS total_grade
FROM students AS S
LEFT JOIN papers AS P
ON S.student_id = P.student_id
GROUP BY S.first_name
ORDER BY total_grade DESC;

DROP TABLE customers;
DROP TABLE orders;

DROP database cart;