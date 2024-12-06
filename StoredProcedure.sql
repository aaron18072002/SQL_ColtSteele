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

USE employees;

DELIMITER $$
CREATE procedure select_salaries()
BEGIN
	SELECT * FROM salaries
    LIMIT 1000;
END$$
DELIMITER ;

CALL select_salaries;

DROP PROCEDURE IF EXISTS select_salaries;

DELIMITER $$
CREATE PROCEDURE select_salary_by_emp_no(IN p_emp_no INTEGER)
BEGIN
	SELECT E.first_name,E.last_name,S.salary,S.from_date,S.to_date
    FROM employees AS E
    LEFT JOIN salaries AS S
    ON E.emp_no = S.emp_no
    WHERE E.emp_no = p_emp_no;
END $$
DELIMITER ;

CALL select_salary_by_emp_no(10001);

SELECT * FROM employees;

DELIMITER $$
CREATE PROCEDURE select_avg_salary_by_emp_no(IN p_emp_no INTEGER)
BEGIN
	SELECT E.first_name,E.last_name,ROUND(AVG(S.salary),2) AS avg_salary
    FROM employees AS E
    LEFT JOIN salaries AS S
    ON E.emp_no = S.emp_no
    WHERE E.emp_no = p_emp_no
    GROUP BY E.first_name,E.last_name;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS select_avg_salary_by_emp_no;

CALL select_avg_salary_by_emp_no(11300);

DELIMITER $$
CREATE PROCEDURE select_avg_salary_by_emp_no
	(IN p_emp_no INTEGER, OUT p_avg_salary DECIMAL(10,2))
BEGIN
	SELECT ROUND(AVG(S.salary)) INTO p_avg_salary
    FROM employees AS E
    LEFT JOIN salaries AS S
    ON E.emp_no = S.emp_no
    WHERE E.emp_no = p_emp_no
    GROUP BY E.emp_no;
END$$
DELIMITER ;

SET @avg_salary = 0;
CALL select_avg_salary_by_emp_no(11300,@avg_salary);
SELECT @avg_salary AS avg_salary;
