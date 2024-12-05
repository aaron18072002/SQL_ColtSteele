USE theaters;
DROP TABLE IF EXISTS reviewers,
                     reviews,
                     series;
DROP database IF EXISTS theaters;

USE employees;
DROP PROCEDURE IF EXISTS select_employees;

DELIMITER $$ 
CREATE PROCEDURE select_employees()
BEGIN 
	SELECT * FROM employees
    LIMIT 1000;
END$$
DELIMITER ;

CALL select_employees;

SELECT * FROM salaries;
SELECT * FROM employees;

DELIMITER $$
CREATE PROCEDURE select_avg_salary_employees()
BEGIN
	SELECT E.emp_no, ROUND(AVG(S.salary),2) AS avg_salary
    FROM employees AS E
    LEFT JOIN salaries AS S
    ON E.emp_no = S.emp_no
    GROUP BY E.emp_no;
END$$
DELIMITER ;

CALL select_avg_salary_employees();



