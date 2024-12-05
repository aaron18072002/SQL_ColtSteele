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


