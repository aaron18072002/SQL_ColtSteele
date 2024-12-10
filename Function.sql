USE employees;

DELIMITER $$
CREATE FUNCTION f_emp_avg_salary(p_emp_no INT) RETURNS DECIMAL(10,2)
READS SQL DATA
DETERMINISTIC
BEGIN
DECLARE avg_salary DECIMAL(10,2);
	SELECT ROUND(AVG(S.salary),2) INTO avg_salary
    FROM employees AS E
    LEFT JOIN salaries AS S
    ON E.emp_no = S.emp_no
	WHERE E.emp_no = p_emp_no
    GROUP BY E.emp_no;
RETURN avg_salary;
END$$
DELIMITER ;

SELECT f_emp_avg_salary(11300);

DELIMITER $$
CREATE FUNCTION emp_info(p_firstname_emp VARCHAR(14), p_lastname_emp VARCHAR(14))
RETURNS DECIMAL(10,2)
READS SQL DATA
DETERMINISTIC
BEGIN
	DECLARE salary DECIMAL(10,2);
    SELECT S.salary INTO salary
    FROM employees AS E
    LEFT JOIN salaries AS S
    ON E.emp_no = S.emp_no
    WHERE E.first_name LIKE p_firstname_emp
		AND E.last_name LIKE p_lastname_emp
	ORDER BY S.from_date DESC;
	RETURN salary;
END$$
DELIMITER ; 

SELECT emp_info('Georgi','Facello');

SELECT * FROM salaries ORDER BY from_date DESC;
SELECT * FROM employees AS E
	WHERE E.first_name LIKE 'Georgi'
    AND E.last_name LIKE 'Facello';

